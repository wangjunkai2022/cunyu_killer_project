.class Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcreativemaybeno/wakelock/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakelockApiCodec"
.end annotation


# static fields
.field public static final INSTANCE:Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;

    invoke-direct {v0}, Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;-><init>()V

    sput-object v0, Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;->INSTANCE:Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    const/16 v0, -0x80

    if-eq p1, v0, :cond_1

    const/16 v0, -0x7f

    if-eq p1, v0, :cond_0

    .line 72
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    invoke-virtual {p0, p2}, Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcreativemaybeno/wakelock/Messages$ToggleMessage;->fromMap(Ljava/util/Map;)Lcreativemaybeno/wakelock/Messages$ToggleMessage;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    invoke-virtual {p0, p2}, Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;->fromMap(Ljava/util/Map;)Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;

    move-result-object p1

    return-object p1
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 1

    .line 78
    instance-of v0, p2, Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    .line 79
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 80
    check-cast p2, Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;

    invoke-virtual {p2}, Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;->toMap()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_0
    instance-of v0, p2, Lcreativemaybeno/wakelock/Messages$ToggleMessage;

    if-eqz v0, :cond_1

    const/16 v0, 0x81

    .line 83
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    check-cast p2, Lcreativemaybeno/wakelock/Messages$ToggleMessage;

    invoke-virtual {p2}, Lcreativemaybeno/wakelock/Messages$ToggleMessage;->toMap()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
