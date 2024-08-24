.class public Lcom/android/camera2/portrait/PortraitUtil;
.super Ljava/lang/Object;
.source "PortraitUtil.java"


# static fields
.field public static final ALGORITHM_INVALID_BOKEH:Ljava/lang/String; = "invalid_bokeh"

.field public static final ALGORITHM_NAME_AMBILIGHT:Ljava/lang/String; = "ambilight"

.field public static final ALGORITHM_NAME_DUAL_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final ALGORITHM_NAME_MEGVII_DUAL_PORTRAIT:Ljava/lang/String; = "megvii_portrait"

.field public static final ALGORITHM_NAME_MEGVII_DUAL_PORTRAIT_GOOGLE:Ljava/lang/String; = "megvii_portrait_google"

.field public static final ALGORITHM_NAME_MIMOJI_CAPTURE:Ljava/lang/String; = "mimoji"

.field public static final ALGORITHM_NAME_MI_DUAL_PORTRAIT:Ljava/lang/String; = "mi_portrait"

.field public static final ALGORITHM_NAME_MI_SOFT_PORTRAIT:Ljava/lang/String; = "soft-portrait"

.field public static final ALGORITHM_NAME_MI_SOFT_PORTRAIT_ENCRYPTED:Ljava/lang/String; = "soft-portrait-enc"

.field public static final TAG:Ljava/lang/String; = "PortraitUtil"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBokehAlgorithmName(I)Ljava/lang/String;
    .locals 4

    const-string v0, "portrait"

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0xff

    if-eq p0, v1, :cond_0

    .line 1
    sget-object v1, Lcom/android/camera2/portrait/PortraitUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown vendor id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "invalid_bokeh"

    goto :goto_0

    :cond_1
    const-string v0, "megvii_portrait_google"

    goto :goto_0

    :cond_2
    const-string v0, "megvii_portrait"

    goto :goto_0

    :cond_3
    const-string v0, "mi_portrait"

    :cond_4
    :goto_0
    return-object v0
.end method
