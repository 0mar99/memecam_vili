.class public Lcom/android/camera/module/loader/tempfunction/FunctionParseAiScene;
.super Ljava/lang/Object;
.source "FunctionParseAiScene.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public mParsedAiScene:I


# direct methods
.method public constructor <init>(ILcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/camera/module/loader/tempfunction/FunctionParseAiScene;->mParsedAiScene:I

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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/tempfunction/FunctionParseAiScene;->apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
