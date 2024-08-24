.class public interface abstract annotation Lcom/xiaomi/camera/base/Constants$HdrCapability;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/base/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "HdrCapability"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final HAL_HDR:I = 0x0

.field public static final MIVI_MULTIPLE_RAW_HDR:I = 0x4

.field public static final MIVI_MULTIPLE_YUV_HDR:I = 0x1

.field public static final REAR_HAL_AND_FRONT_MIVI_MULTIPLE_YUV_HDR:I = 0x2

.field public static final REAR_MIVI_ALLINONE_YUV_AND_FRONT_MIVI_MULTIPLE_YUV_HDR:I = 0x3
