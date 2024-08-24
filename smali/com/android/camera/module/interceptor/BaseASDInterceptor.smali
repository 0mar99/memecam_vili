.class public abstract Lcom/android/camera/module/interceptor/BaseASDInterceptor;
.super Lcom/android/camera/module/interceptor/BaseModuleInterceptor;
.source "BaseASDInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/interceptor/BaseASDInterceptor$SampleTime;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/android/camera/module/Module;",
        ">",
        "Lcom/android/camera/module/interceptor/BaseModuleInterceptor;"
    }
.end annotation


# static fields
.field public static final SAMPLE_PER_FRAME:I = 0x10

.field public static final SAMPLE_PER_RESULT:I = 0x0

.field public static final SAMPLE_PER_SECOND:I = 0x3e8

.field public static final SAMPLE_REGULAR:I = 0x1f4

.field public static final SAMPLE_TIK_TOK:I = 0x64


# instance fields
.field public parsedTime:J

.field public supportInTime:Z

.field public supportPrior:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/BaseModuleInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/Camera2Proxy;",
            "TM;",
            "Lcom/android/camera/module/interceptor/ASDInterceptorChain;",
            ")V"
        }
    .end annotation
.end method

.method public compareAndSetTime(J)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->getStartDelayTime()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->parsedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->getStartDelayTime()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->parsedTime:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->parsedTime:J

    sub-long v0, p1, v0

    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->getSampleTime()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 4
    iput-wide p1, p0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->parsedTime:J

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public abstract consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation
.end method

.method public create(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/android/camera2/CameraCapabilities;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->prepare(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public abstract dataChanged()Z
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public abstract getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/Camera2Proxy;",
            "TM;)Z"
        }
    .end annotation
.end method

.method public getPriority()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getSampleTime()I
.end method

.method public getStartDelayTime()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getTAG()Ljava/lang/String;
.end method

.method public abstract initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/android/camera2/CameraCapabilities;",
            ")Z"
        }
    .end annotation
.end method

.method public intercept()V
    .locals 0

    return-void
.end method

.method public abstract moveOnMainThread()Z
.end method

.method public abstract onCaptureResultNext(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult;",
            "Lcom/android/camera2/Camera2Proxy;",
            "TM;",
            "Lcom/android/camera/module/interceptor/ASDInterceptorChain;",
            "Z)Z"
        }
    .end annotation
.end method

.method public parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult;",
            "TM;",
            "Lcom/android/camera2/Camera2Proxy;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract prepare(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/android/camera2/CameraCapabilities;",
            ")Z"
        }
    .end annotation
.end method

.method public receiveCaptureResultWhenCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
