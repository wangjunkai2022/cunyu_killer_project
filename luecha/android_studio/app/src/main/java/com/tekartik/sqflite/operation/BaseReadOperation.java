package com.tekartik.sqflite.operation;

import com.tekartik.sqflite.SqlCommand;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class BaseReadOperation implements Operation {
    protected abstract OperationResult getOperationResult();

    private String getSql() {
        return (String) getArgument("sql");
    }

    private List<Object> getSqlArguments() {
        return (List) getArgument("arguments");
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public SqlCommand getSqlCommand() {
        return new SqlCommand(getSql(), getSqlArguments());
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public Boolean getInTransaction() {
        return getBoolean("inTransaction");
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public boolean getNoResult() {
        return Boolean.TRUE.equals(getArgument("noResult"));
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public boolean getContinueOnError() {
        return Boolean.TRUE.equals(getArgument("continueOnError"));
    }

    private Boolean getBoolean(String str) {
        Object argument = getArgument(str);
        if (argument instanceof Boolean) {
            return (Boolean) argument;
        }
        return null;
    }
}
