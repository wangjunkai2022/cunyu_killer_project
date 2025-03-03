package io.flutter.embedding.engine.loader;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class FlutterApplicationInfo {
    private static final String DEFAULT_AOT_SHARED_LIBRARY_NAME = "libapp.so";
    private static final String DEFAULT_FLUTTER_ASSETS_DIR = "flutter_assets";
    private static final String DEFAULT_ISOLATE_SNAPSHOT_DATA = "isolate_snapshot_data";
    private static final String DEFAULT_VM_SNAPSHOT_DATA = "vm_snapshot_data";
    public final String aotSharedLibraryName;
    final boolean automaticallyRegisterPlugins;
    public final String domainNetworkPolicy;
    public final String flutterAssetsDir;
    public final String isolateSnapshotData;
    public final String nativeLibraryDir;
    public final String vmSnapshotData;

    public FlutterApplicationInfo(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
        this.aotSharedLibraryName = str == null ? "libapp.so" : str;
        this.vmSnapshotData = str2 == null ? "vm_snapshot_data" : str2;
        this.isolateSnapshotData = str3 == null ? "isolate_snapshot_data" : str3;
        this.flutterAssetsDir = str4 == null ? "flutter_assets" : str4;
        this.nativeLibraryDir = str6;
        this.domainNetworkPolicy = str5 == null ? "" : str5;
        this.automaticallyRegisterPlugins = z;
    }
}
