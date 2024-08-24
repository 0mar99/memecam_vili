.class public Lcom/xiaomi/camera/mivi/ImageFormatUtil;
.super Ljava/lang/Object;
.source "ImageFormatUtil.java"


# static fields
.field public static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field public static final HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field public static final HAL_PIXEL_FORMAT_RAW10:I = 0x25

.field public static final HAL_PIXEL_FORMAT_RAW12:I = 0x26

.field public static final HAL_PIXEL_FORMAT_RAW16:I = 0x20

.field public static final HAL_PIXEL_FORMAT_RAW_OPAQUE:I = 0x24

.field public static final HAL_PIXEL_FORMAT_Y16:I = 0x20363159

.field public static final HAL_PIXEL_FORMAT_YCbCr_420_888:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static imageFormatToPublic(I)I
    .locals 1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x100

    return p0
.end method
