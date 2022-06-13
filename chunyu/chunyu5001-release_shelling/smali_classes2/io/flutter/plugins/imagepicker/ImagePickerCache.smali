.class Lio/flutter/plugins/imagepicker/ImagePickerCache;
.super Ljava/lang/Object;
.source "ImagePickerCache.java"


# static fields
.field private static final FLUTTER_IMAGE_PICKER_IMAGE_PATH_KEY:Ljava/lang/String; = "flutter_image_picker_image_path"

.field private static final MAP_KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final MAP_KEY_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field static final MAP_KEY_IMAGE_QUALITY:Ljava/lang/String; = "imageQuality"

.field static final MAP_KEY_MAX_HEIGHT:Ljava/lang/String; = "maxHeight"

.field static final MAP_KEY_MAX_WIDTH:Ljava/lang/String; = "maxWidth"

.field static final MAP_KEY_PATH:Ljava/lang/String; = "path"

.field static final MAP_KEY_PATH_LIST:Ljava/lang/String; = "pathList"

.field private static final MAP_KEY_TYPE:Ljava/lang/String; = "type"

.field static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "flutter_image_picker_shared_preference"

.field private static final SHARED_PREFERENCE_ERROR_CODE_KEY:Ljava/lang/String; = "flutter_image_picker_error_code"

.field private static final SHARED_PREFERENCE_ERROR_MESSAGE_KEY:Ljava/lang/String; = "flutter_image_picker_error_message"

.field private static final SHARED_PREFERENCE_IMAGE_QUALITY_KEY:Ljava/lang/String; = "flutter_image_picker_image_quality"

.field private static final SHARED_PREFERENCE_MAX_HEIGHT_KEY:Ljava/lang/String; = "flutter_image_picker_max_height"

.field private static final SHARED_PREFERENCE_MAX_WIDTH_KEY:Ljava/lang/String; = "flutter_image_picker_max_width"

.field private static final SHARED_PREFERENCE_PENDING_IMAGE_URI_PATH_KEY:Ljava/lang/String; = "flutter_image_picker_pending_image_uri"

.field private static final SHARED_PREFERENCE_TYPE_KEY:Ljava/lang/String; = "flutter_image_picker_type"


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "flutter_image_picker_shared_preference"

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private setMaxDimension(Ljava/lang/Double;Ljava/lang/Double;I)V
    .locals 3

    .line 82
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    const-string p1, "flutter_image_picker_max_width"

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-eqz p2, :cond_1

    .line 87
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    const-string v1, "flutter_image_picker_max_height"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const/4 p1, -0x1

    const-string p2, "flutter_image_picker_image_quality"

    if-le p3, p1, :cond_2

    const/16 p1, 0x65

    if-ge p3, p1, :cond_2

    .line 90
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    const/16 p1, 0x64

    .line 92
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "flutter_image_picker_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 125
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method getCacheMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "flutter_image_picker_image_path"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    .line 136
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "pathList"

    .line 139
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 144
    :goto_0
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "flutter_image_picker_error_code"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v5, ""

    if-eqz v2, :cond_2

    .line 145
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorCode"

    .line 146
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "flutter_image_picker_error_message"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorMessage"

    .line 150
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v1, v4

    :cond_2
    if-eqz v1, :cond_7

    .line 155
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "flutter_image_picker_type"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 157
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_3
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "flutter_image_picker_max_width"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_4

    .line 160
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 161
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "maxWidth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_4
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "flutter_image_picker_max_height"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 165
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "maxHeight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_5
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "flutter_image_picker_image_quality"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x64

    const-string v4, "imageQuality"

    if-eqz v1, :cond_6

    .line 168
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 171
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    return-object v0
.end method

.method retrievePendingCameraMediaUriPath()Ljava/lang/String;
    .locals 3

    .line 103
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "flutter_image_picker_pending_image_uri"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method saveDimensionWithMethodCall(Lio/flutter/plugin/common/MethodCall;)V
    .locals 4

    const-string v0, "maxWidth"

    .line 71
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    const-string v1, "maxHeight"

    .line 72
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    const-string v2, "imageQuality"

    .line 74
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 78
    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->setMaxDimension(Ljava/lang/Double;Ljava/lang/Double;I)V

    return-void
.end method

.method savePendingCameraMediaUriPath(Landroid/net/Uri;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "flutter_image_picker_pending_image_uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method saveResult(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 110
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string p1, "flutter_image_picker_image_path"

    .line 113
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "flutter_image_picker_error_code"

    .line 116
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "flutter_image_picker_error_message"

    .line 119
    invoke-interface {v1, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method saveTypeWithMethodCallName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pickImage"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pickMultiImage"

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string p1, "image"

    .line 59
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "pickVideo"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "video"

    .line 61
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->setType(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
