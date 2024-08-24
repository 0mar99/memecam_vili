.class public Lcom/android/camera/module/loader/FunctionAsdSceneDetect;
.super Ljava/lang/Object;
.source "FunctionAsdSceneDetect.java"

# interfaces
.implements Lio/reactivex/functions/Function;
.implements Lcom/android/camera/constant/AsdSceneConstant;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/android/camera/constant/AsdSceneConstant;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFlashScene(Landroid/hardware/camera2/CaptureResult;F)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method private getFrontFlashType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getLowLightValue()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, -0x3

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
