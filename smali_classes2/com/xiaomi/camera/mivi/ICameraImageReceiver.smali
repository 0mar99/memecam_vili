.class public abstract Lcom/xiaomi/camera/mivi/ICameraImageReceiver;
.super Ljava/lang/Object;
.source "ICameraImageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;
    }
.end annotation


# static fields
.field public static final RELEASE_DELAY_TIME:I = 0x3a98

.field public static final TAG:Ljava/lang/String; = "ICameraImageReceiver"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mReleaseTask:Ljava/lang/Runnable;

.field public mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

.field public mResultData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

.field public mStateCallback:Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO00o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO00o;-><init>(Lcom/xiaomi/camera/mivi/ICameraImageReceiver;)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mReleaseTask:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: mReleaseTask timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/camera/mivi/bean/RequestData;->getTimestampUs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "ICameraImageReceiver"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->releaseAll()V

    return-void
.end method

.method public abstract doReceive()V
.end method

.method public getRequestData()Lcom/xiaomi/camera/mivi/bean/RequestData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    return-object p0
.end method

.method public final postRelease()V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "ICameraImageReceiver"

    const-string v2, "postRelease: after(ms) 15000"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mReleaseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mReleaseTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public abstract releaseAll()V
.end method

.method public setRequestData(Lcom/xiaomi/camera/mivi/bean/RequestData;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICameraImageReceiver"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mReleaseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mRequestData:Lcom/xiaomi/camera/mivi/bean/RequestData;

    .line 4
    new-instance v0, Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    invoke-direct {v0, p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;-><init>(Lcom/xiaomi/camera/mivi/bean/RequestData;)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mResultData:Lcom/xiaomi/camera/mivi/bean/ResultImageData;

    return-void
.end method

.method public startRequestData(Lcom/xiaomi/camera/mivi/bean/RequestData;Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mReleaseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->setRequestData(Lcom/xiaomi/camera/mivi/bean/RequestData;)V

    .line 3
    iput-object p2, p0, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->mStateCallback:Lcom/xiaomi/camera/mivi/ICameraImageReceiver$StateCallback;

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/mivi/ICameraImageReceiver;->doReceive()V

    return-void
.end method
