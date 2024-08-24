.class public Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;
.super Ljava/lang/Object;
.source "ButtonStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/ButtonStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusRunnable"
.end annotation


# instance fields
.field public mCancelRunnable:Ljava/lang/Runnable;

.field public mScheduler:Lio/reactivex/Scheduler;

.field public mUpRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/reactivex/Scheduler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mUpRunnable:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mCancelRunnable:Ljava/lang/Runnable;

    .line 4
    iput-object p3, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mScheduler:Lio/reactivex/Scheduler;

    return-void
.end method
