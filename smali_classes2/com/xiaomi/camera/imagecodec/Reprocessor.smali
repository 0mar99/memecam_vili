.class public interface abstract Lcom/xiaomi/camera/imagecodec/Reprocessor;
.super Ljava/lang/Object;
.source "Reprocessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
    }
.end annotation


# static fields
.field public static final KEY_MAX_JPEG_SIZE:I = 0x66

.field public static final KEY_MFNR_SUPPORTED:I = 0x65

.field public static final KEY_YUV_TUNING_BUFFER_SIZE:I = 0x67

.field public static final REPROCESS_ERROR_CAPTURE_FAILED:I = 0x1

.field public static final REPROCESS_ERROR_DEVICE_DISCONNECTED:I = 0x2

.field public static final REPROCESS_ERROR_DEVICE_ERROR:I = 0x3

.field public static final VERSION_CODE_NOT_SUPPORTED:I = -0x1


# virtual methods
.method public abstract customize(Ljava/util/HashMap;)V
.end method

.method public abstract deInit()V
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isMFNRSupported()Z
.end method

.method public abstract queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
.end method

.method public abstract setOutputPictureSpec(III)V
.end method

.method public abstract setVirtualCameraIds(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
.end method
