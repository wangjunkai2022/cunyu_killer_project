package com.tekartik.sqflite.operation;

import com.tekartik.sqflite.SqlCommand;
import io.flutter.plugin.common.MethodChannel;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ExecuteOperation extends BaseReadOperation {
    private final SqlCommand command;
    private final Boolean inTransaction;
    private final MethodChannel.Result result;

    @Override // com.tekartik.sqflite.operation.Operation
    public <T> T getArgument(String str) {
        return null;
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public String getMethod() {
        return null;
    }

    @Override // com.tekartik.sqflite.operation.BaseReadOperation
    protected OperationResult getOperationResult() {
        return null;
    }

    public ExecuteOperation(MethodChannel.Result result, SqlCommand sqlCommand, Boolean bool) {
        this.result = result;
        this.command = sqlCommand;
        this.inTransaction = bool;
    }

    @Override // com.tekartik.sqflite.operation.BaseReadOperation, com.tekartik.sqflite.operation.Operation
    public SqlCommand getSqlCommand() {
        return this.command;
    }

    @Override // com.tekartik.sqflite.operation.OperationResult
    public void error(String str, String str2, Object obj) {
        this.result.error(str, str2, obj);
    }

    @Override // com.tekartik.sqflite.operation.BaseReadOperation, com.tekartik.sqflite.operation.Operation
    public Boolean getInTransaction() {
        return this.inTransaction;
    }

    @Override // com.tekartik.sqflite.operation.OperationResult
    public void success(Object obj) {
        this.result.success(obj);
    }
}
