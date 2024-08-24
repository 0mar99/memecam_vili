.class public Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;
.super Ljava/lang/Object;
.source "IspInterfaceReprocessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PicImageListener"
.end annotation


# instance fields
.field public mIO:Lcom/xiaomi/camera/isp/IspInterfaceIO;

.field public final synthetic this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$100(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageAvailable: received reprocessed image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1300(Landroid/media/Image;)[B

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$700(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$800(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$800(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1100(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$800(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    .line 9
    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$800(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-interface {v1, v0, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onJpegAvailable([BLjava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$100(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpeg return for %s. cost=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    .line 12
    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$800(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v5}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$900(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 14
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$802(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 16
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->mIO:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    iput-boolean v4, v0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->isIdle:Z

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$100(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onImageAvailable: null task!"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1200(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    return-void

    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
