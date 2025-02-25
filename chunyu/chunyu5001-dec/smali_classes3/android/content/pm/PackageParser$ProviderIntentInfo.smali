.class public final Landroid/content/pm/PackageParser$ProviderIntentInfo;
.super Landroid/content/pm/PackageParser$IntentInfo;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderIntentInfo"
.end annotation


# instance fields
.field public final provider:Landroid/content/pm/PackageParser$Provider;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "provider"
        }
    .end annotation

    .line 675
    invoke-direct {p0}, Landroid/content/pm/PackageParser$IntentInfo;-><init>()V

    .line 676
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 681
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
