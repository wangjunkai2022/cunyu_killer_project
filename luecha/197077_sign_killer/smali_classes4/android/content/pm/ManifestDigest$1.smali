.class final Landroid/content/pm/ManifestDigest$1;
.super Ljava/lang/Object;
.source "ManifestDigest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ManifestDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/ManifestDigest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ManifestDigest;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 57
    new-instance v0, Landroid/content/pm/ManifestDigest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/ManifestDigest;-><init>(Landroid/os/Parcel;Landroid/content/pm/ManifestDigest$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "source"
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/content/pm/ManifestDigest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ManifestDigest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/pm/ManifestDigest;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 61
    new-array p1, p1, [Landroid/content/pm/ManifestDigest;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/content/pm/ManifestDigest$1;->newArray(I)[Landroid/content/pm/ManifestDigest;

    move-result-object p1

    return-object p1
.end method
