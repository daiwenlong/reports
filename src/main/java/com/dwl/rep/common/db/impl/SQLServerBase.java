package com.dwl.rep.common.db.impl;

import com.dwl.rep.common.db.DataBase;

public class SQLServerBase implements DataBase {

	@Override
	public String getDriver() {
		return "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	}

	@Override
	public String getLinkSql() {
		return "select 1";
	}

	@Override
	public String getDbType() {
		return "SQLServer";
	}

}
