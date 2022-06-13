package top.niunaijun.blackbox.utils;

import java.util.List;

/* loaded from: classes4.dex */
public class ShellUtils {
    public static final String COMMAND_EXIT = "exit\n";
    public static final String COMMAND_LINE_END = "\n";
    public static final String COMMAND_SH = "sh";
    public static final String COMMAND_SU = "su";

    private ShellUtils() {
        throw new AssertionError();
    }

    public static boolean checkRootPermission() {
        return execCommand("echo root", true, false).result == 0;
    }

    public static CommandResult execCommand(String str, boolean z) {
        return execCommand(new String[]{str}, z, true);
    }

    public static CommandResult execCommand(List<String> list, boolean z) {
        return execCommand(list == null ? null : (String[]) list.toArray(new String[0]), z, true);
    }

    public static CommandResult execCommand(String[] strArr, boolean z) {
        return execCommand(strArr, z, true);
    }

    public static CommandResult execCommand(String str, boolean z, boolean z2) {
        return execCommand(new String[]{str}, z, z2);
    }

    public static CommandResult execCommand(List<String> list, boolean z, boolean z2) {
        return execCommand(list == null ? null : (String[]) list.toArray(new String[0]), z, z2);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:(4:131|6|(1:8)(1:9)|10)|(8:133|11|115|12|13|(4:16|(2:18|137)(2:19|136)|20|14)|135|21)|(12:127|23|125|24|(3:129|25|(1:27)(0))|44|(1:46)|(1:50)|94|(1:96)|97|98)(1:43)|113|44|(0)|(0)|94|(0)|97|98) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b8, code lost:
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b9, code lost:
        r10.printStackTrace();
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0101, code lost:
        if (r10 != 0) goto L_0x0120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x011e, code lost:
        if (r10 != 0) goto L_0x0120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0120, code lost:
        r10.destroy();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0123, code lost:
        r8 = r9;
        r1 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x010f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b4 A[Catch: IOException -> 0x00b8, TRY_LEAVE, TryCatch #1 {IOException -> 0x00b8, blocks: (B:44:0x00af, B:46:0x00b4), top: B:113:0x00af }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00fa A[Catch: IOException -> 0x00f6, TRY_LEAVE, TryCatch #3 {IOException -> 0x00f6, blocks: (B:72:0x00f2, B:76:0x00fa), top: B:117:0x00f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0117 A[Catch: IOException -> 0x0113, TRY_LEAVE, TryCatch #4 {IOException -> 0x0113, blocks: (B:85:0x010f, B:89:0x0117), top: B:119:0x010f }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x012a  */
    /* JADX WARN: Type inference failed for: r10v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v16, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static top.niunaijun.blackbox.utils.ShellUtils.CommandResult execCommand(java.lang.String[] r8, boolean r9, boolean r10) {
        /*
        // Method dump skipped, instructions count: 339
        */
        throw new UnsupportedOperationException("Method not decompiled: top.niunaijun.blackbox.utils.ShellUtils.execCommand(java.lang.String[], boolean, boolean):top.niunaijun.blackbox.utils.ShellUtils$CommandResult");
    }

    /* loaded from: classes4.dex */
    public static class CommandResult {
        public int result;
        public String successMsg;

        public CommandResult(int i) {
            this.result = i;
        }

        public CommandResult(int i, String str) {
            this.result = i;
            this.successMsg = str;
        }
    }
}
