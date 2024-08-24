.class public abstract Lcom/android/zxing/decoders/qrcode/MlkitWrapper$Scanner;
.super Ljava/lang/Object;
.source "MlkitWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/decoders/qrcode/MlkitWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Scanner"
.end annotation


# instance fields
.field public final cancelJobInfoTask:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    const-wide/16 v2, 0x1

    .line 3
    invoke-static {v2, v3, v0, v1}, Lio/reactivex/Flowable;->interval(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/reactivex/Flowable;->onBackpressureLatest()Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0Oo;->OooO00o:LOooO0O0/OooO0O0/OooO0o0/OooO00o/OooO0oO/OooO0Oo;

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$Scanner;->cancelJobInfoTask:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/zxing/decoders/qrcode/MlkitWrapper$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$Scanner;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/zxing/decoders/qrcode/MlkitWrapper;->access$700()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/decoders/qrcode/MlkitWrapper$Scanner;->cancelJobInfoTask:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method
