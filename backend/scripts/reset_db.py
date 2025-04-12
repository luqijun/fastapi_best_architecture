#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ruff: noqa: I001
import logging
import sys

from anyio import run

sys.path.append('../')

from sqlalchemy import false, text

# if add new app, do like this
from backend.app.admin.model import *  # noqa: F401
from backend.app.generator.model import *  # noqa: F401
from backend.plugin.casbin.model import *  # noqa: F401
from backend.plugin.notice.model import *  # noqa: F401

from backend.database.db import create_async_engine_and_session
from backend.database.db import create_table
from backend.core.conf import settings

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

SQLALCHEMY_DATABASE_URL = (
    f'mysql+asyncmy://{settings.DATABASE_USER}:{settings.DATABASE_PASSWORD}@{settings.DATABASE_HOST}:'
    f'{settings.DATABASE_PORT}'
)
async_engine_init, _ = create_async_engine_and_session(SQLALCHEMY_DATABASE_URL)

async def init() -> None:
    
    logger.info('Creating database')
    await execute_sql_file(f'sql/{settings.DATABASE_TYPE}/create_db.sql', settings.DATABASE_NAME)
    logger.info('Database created')
    
    logger.info('Creating tables')
    await create_table()
    # await execute_sql_file(f'sql/{settings.DATABASE_TYPE}/create_tables.sql', settings.DATABASE_NAME,  use_database=True) 
    logger.info('Tables created')
    
    logger.info('Inserting data')
    await execute_sql_file(f'sql/{settings.DATABASE_TYPE}/init_test_data.custom.sql', settings.DATABASE_NAME, use_database=True)
    logger.info('Data inserted')
    

async def execute_sql_file(file_path, database_name:str, use_database=False) -> None:
    """
    执行指定文件中的所有 SQL 语句。

    :param file_path: SQL 文件的路径
    :param engine: SQLAlchemy 数据库引擎
    """
    with open(file_path, 'r') as file:
        sql_file_content = file.read()

    # 将 SQL 文件内容按分号分割成多个 SQL 语句
    sql_statements = sql_file_content.split(';')

    # 获取数据库连接
    async with async_engine_init.begin() as conn:
        
        if use_database:
            # 使用指定的数据库
            statement = text(f'USE {database_name}')
            await conn.execute(statement)
            print(statement)
        
        for statement in sql_statements:
            # 去除空白字符
            statement = statement.strip()
            if statement:  # 确保语句不为空
                try:
                    if '$db_name' in statement:
                        statement = statement.replace('$db_name', database_name)
                    print(statement)
                    await conn.execute(statement=text(statement))
                except Exception as e:
                    print(f"Error executing statement: {statement}")
                    print(e)
                    break


if __name__ == '__main__':
    run(init)  # type: ignore
