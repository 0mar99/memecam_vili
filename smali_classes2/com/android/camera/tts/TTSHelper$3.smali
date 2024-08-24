.class public Lcom/android/camera/tts/TTSHelper$3;
.super Ljava/lang/Object;
.source "TTSHelper.java"

# interfaces
.implements Lcom/android/camera/tts/TTSHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/tts/TTSHelper;->speakingTextInTalkbackMode(Lcom/android/camera/tts/TTSHelper;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusFailed()V
    .locals 1

    const-string p0, "TTSHelper"

    const-string v0, "failed to require audio focus."

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTTSStarted()V
    .locals 1

    const-string p0, "TTSHelper"

    const-string/jumbo v0, "onTTSStarted."

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTTSStopped(Z)V
    .locals 0

    const-string p0, "TTSHelper"

    const-string/jumbo p1, "onTTSStopped."

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
