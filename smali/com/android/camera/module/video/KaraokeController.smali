.class public Lcom/android/camera/module/video/KaraokeController;
.super Ljava/lang/Object;
.source "KaraokeController.java"


# instance fields
.field public mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

.field public mIsStopKaraoke:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/video/KaraokeController;->mIsStopKaraoke:Z

    return-void
.end method


# virtual methods
.method public closeKaraoke(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, v0}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/SoundSetting;->closeKaraokeState(Landroid/content/Context;I)V

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/module/video/KaraokeController;->mIsStopKaraoke:Z

    if-eqz v1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/video/KaraokeController;->mIsStopKaraoke:Z

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/video/KaraokeController;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/AudioMonitorPlayer;->stopPlay()V

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lcom/android/camera/SoundSetting;->closeKaraokeEquipment(Landroid/content/Context;I)V

    return-void
.end method

.method public openKaraoke(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p2, v0}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    .line 2
    invoke-static {p2}, Lcom/android/camera/SoundSetting;->isStartKaraoke(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/video/KaraokeController;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/camera/AudioMonitorPlayer;

    invoke-direct {v1}, Lcom/android/camera/AudioMonitorPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/video/KaraokeController;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lcom/android/camera/SoundSetting;->openKaraokeEquipment(Landroid/content/Context;I)V

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/module/video/KaraokeController;->mIsStopKaraoke:Z

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/video/KaraokeController;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/AudioMonitorPlayer;->startPlay()V

    .line 9
    :cond_1
    invoke-static {p1, p2}, Lcom/android/camera/SoundSetting;->openKaraokeState(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method
