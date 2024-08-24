.class public Lcom/android/zxing/decoders/qrcode/MlkitWrapper;
.super Ljava/lang/Object;
.source "MlkitWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zxing/decoders/qrcode/MlkitWrapper$Scanner;,
        Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;
    }
.end annotation


# static fields
.field public static final CLASS_JOB_INFO_SCHEDULER_SERVICE:Ljava/lang/String; = "com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService"

.field public static final TAG:Ljava/lang/String; = "MlkitWrapper"

.field public static final sInstance:Lcom/android/zxing/decoders/qrcode/MlkitWrapper;


# instance fields
.field public mIsInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;

    invoke-direct {v0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;-><init>()V

    sput-object v0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;->sInstance:Lcom/android/zxing/decoders/qrcode/MlkitWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$700()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;->cancleJobInfo()V

    return-void
.end method

.method public static cancleJobInfo()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 4
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "MlkitWrapper"

    const-string v3, "cancleJobInfo: remove job upload log"

    .line 5
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/android/zxing/decoders/qrcode/MlkitWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;->sInstance:Lcom/android/zxing/decoders/qrcode/MlkitWrapper;

    return-object v0
.end method

.method private initIfNeed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;->mIsInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;->mIsInitialized:Z

    .line 3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v0, Lcom/google/mlkit/common/internal/CommonComponentRegistrar;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/CommonComponentRegistrar;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcom/google/mlkit/vision/common/internal/VisionCommonRegistrar;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/VisionCommonRegistrar;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcom/google/mlkit/vision/barcode/internal/BarcodeRegistrar;

    invoke-direct {v0}, Lcom/google/mlkit/vision/barcode/internal/BarcodeRegistrar;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->initialize(Landroid/content/Context;Ljava/util/List;)Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method


# virtual methods
.method public createQRCodeScanner()Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;->initIfNeed()V

    .line 2
    new-instance p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$QRCodeScanner;-><init>(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$1;)V

    return-object p0
.end method
