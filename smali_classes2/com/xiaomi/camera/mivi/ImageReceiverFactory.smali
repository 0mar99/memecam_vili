.class public Lcom/xiaomi/camera/mivi/ImageReceiverFactory;
.super Ljava/lang/Object;
.source "ImageReceiverFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/mivi/ImageReceiverFactory$Holder;
    }
.end annotation


# static fields
.field public static final MAX_QUEUE_SIZE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ImageReceiverFactory"


# instance fields
.field public final MOCK_CAMERA_ROLE_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMockCameraReceiverQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/xiaomi/camera/mivi/ICameraImageReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0x6c

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->MOCK_CAMERA_ROLE_IDS:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->mMockCameraReceiverQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/mivi/ImageReceiverFactory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/camera/mivi/ImageReceiverFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory$Holder;->INSTANCE:Lcom/xiaomi/camera/mivi/ImageReceiverFactory;

    return-object v0
.end method

.method private putInner(Lcom/xiaomi/camera/mivi/ICameraImageReceiver;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->mMockCameraReceiverQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    const-string p1, "ImageReceiverFactory"

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put: after put ,the size is > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->mMockCameraReceiverQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 9

    const-string v0, "camera"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "ImageReceiverFactory"

    if-eqz v1, :cond_1

    .line 3
    :try_start_1
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 5
    sget-object v7, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CAMERA_ROLE_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v6, v7}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 6
    iget-object v7, p0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->MOCK_CAMERA_ROLE_IDS:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->mMockCameraReceiverQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    const/4 v6, 0x3

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init: cameraID > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v6, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    invoke-direct {v6, p1, v5, p2, p3}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 9
    invoke-direct {p0, v6}, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->putInner(Lcom/xiaomi/camera/mivi/ICameraImageReceiver;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "init: fail, can not obtain camera ids"

    .line 10
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public put(Lcom/xiaomi/camera/mivi/ICameraImageReceiver;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->postRelease()V

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->putInner(Lcom/xiaomi/camera/mivi/ICameraImageReceiver;)V

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "ImageReceiverFactory"

    const-string v1, "release: E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->mMockCameraReceiverQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "release: but no data"

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->mMockCameraReceiverQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->mMockCameraReceiverQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->releaseAll()V

    goto :goto_0

    :cond_1
    const-string p0, "release: X"

    .line 7
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public take()Lcom/xiaomi/camera/mivi/ICameraImageReceiver;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->mMockCameraReceiverQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "ImageReceiverFactory"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "take: after take ,the size is > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverFactory;->mMockCameraReceiverQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v1, v0

    :goto_1
    return-object v1
.end method
