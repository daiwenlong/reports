package com.dwl.rep.common.DB.impl;

import com.dwl.rep.common.DB.DataBase;

public class PostgreSQLBase implements DataBase {

	@Override
	public String getDriver() {
		return "org.postgresql.Driver";
	}

	@Override
	public String getLinkSql() {
		return "select version()";
	}

	@Override
	public String getDbType() {
		return "PostgreSQL";
	}

}
