.class public Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;
.super Ljava/lang/Object;
.source "DocumentProcessWrapper.java"


# static fields
.field public static final INSTANCE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

.field public static final TAG:Ljava/lang/String; = "DocumentProcessWrapper"


# instance fields
.field public final mDocProcessRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mIsInitializing:Z

.field public volatile mIsReleasing:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    invoke-direct {v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;-><init>()V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->INSTANCE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mDocProcessRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->INSTANCE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    return-object v0
.end method


# virtual methods
.method public doAlginDocument([BLandroid/graphics/Bitmap;II[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mDocProcessRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    if-nez v0, :cond_0

    return-object p5

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doAlginDocument([BLandroid/graphics/Bitmap;II[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F

    move-result-object p0

    return-object p0
.end method

.method public doCropAndEnhance(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Z)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mDocProcessRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doCropAndEnhance(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public doCropAndEnhance([BII[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;ZLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)Landroid/graphics/Bitmap;
    .locals 8

    .line 3
    iget-object p0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mDocProcessRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doCropAndEnhance([BII[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;ZLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public doScanDocument([B[FIIIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)I
    .locals 10

    move-object v0, p0

    .line 1
    iget-object v0, v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mDocProcessRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    if-nez v1, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_NOSHOW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 3
    invoke-virtual/range {v1 .. v9}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doScanDocument([B[FIIIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)I

    move-result v0

    return v0
.end method

.method public initProcessIfNeed()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mDocProcessRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mIsInitializing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mIsInitializing:Z

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mDocProcessRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDocumentProcessIfNeed: cost time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentProcessWrapper"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mIsInitializing:Z

    :cond_0
    return-void
.end method

.method public isReleasing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mIsReleasing:Z

    return p0
.end method

.method public releaseProcess()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mDocProcessRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mIsReleasing:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->release()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseDocumentProcess: cost time "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentProcessWrapper"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mIsReleasing:Z

    :cond_0
    return-void
.end method

.method public rotatePoints([FIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->mDocProcessRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    if-nez p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->rotatePoints([FIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F

    move-result-object p0

    return-object p0
.end method
