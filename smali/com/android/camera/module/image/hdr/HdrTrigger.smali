.class public Lcom/android/camera/module/image/hdr/HdrTrigger;
.super Ljava/lang/Object;
.source "HdrTrigger.java"


# static fields
.field public static final HDR_MODE_CHANGE_TIME_INTERVAL:I = 0x320

.field public static final TAG:Ljava/lang/String; = "HdrTrigger"


# instance fields
.field public autoHdrModeChange:Z

.field public hdrModeChangeTime:J

.field public userSelectedHdrMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateHdrModeChangeTime()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/image/hdr/HdrTrigger;->hdrModeChangeTime:J

    return-void
.end method


# virtual methods
.method public isUpdateHdrTip()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-boolean v2, p0, Lcom/android/camera/module/image/hdr/HdrTrigger;->autoHdrModeChange:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-wide v4, p0, Lcom/android/camera/module/image/hdr/HdrTrigger;->hdrModeChangeTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x320

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    return v3

    .line 3
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/module/image/hdr/HdrTrigger;->autoHdrModeChange:Z

    const/4 p0, 0x1

    return p0
.end method

.method public setHdrModeChange(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/hdr/HdrTrigger;->userSelectedHdrMode:Ljava/lang/String;

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/image/hdr/HdrTrigger;->userSelectedHdrMode:Ljava/lang/String;

    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "auto"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/image/hdr/HdrTrigger;->autoHdrModeChange:Z

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/image/hdr/HdrTrigger;->updateHdrModeChangeTime()V

    const-string v0, "HdrTrigger"

    const-string v1, "Cut from HDR_ON to HDR_AUTO\uff0cautoHdrModeChange = true"

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/module/image/hdr/HdrTrigger;->autoHdrModeChange:Z

    .line 7
    :goto_0
    iput-object p1, p0, Lcom/android/camera/module/image/hdr/HdrTrigger;->userSelectedHdrMode:Ljava/lang/String;

    return-void
.end method
