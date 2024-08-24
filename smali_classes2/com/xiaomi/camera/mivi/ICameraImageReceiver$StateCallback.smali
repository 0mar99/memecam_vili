.class public interface abstract Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;
.super Ljava/lang/Object;
.source "ICameraImageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/mivi/ICameraImageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateCallback"
.end annotation


# virtual methods
.method public abstract onFail(Lcom/xiaomi/camera/mivi/bean/RequestData;Lcom/xiaomi/camera/mivi/ICameraImageReceiver;)V
.end method

.method public abstract onSuccess(Lcom/xiaomi/camera/mivi/bean/ResultImageData;Lcom/xiaomi/camera/mivi/ICameraImageReceiver;)V
.end method
