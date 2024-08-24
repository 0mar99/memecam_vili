.class public Lcom/android/camera/performance/Action$Record;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/performance/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Record"
.end annotation


# static fields
.field public static final RECORDING_CAPTURE:Ljava/lang/String; = "recording_capture"

.field public static final RECORDING_PAUSE:Ljava/lang/String; = "recording_pause"

.field public static final RECORDING_RESUME:Ljava/lang/String; = "recording_resume"

.field public static final START_RECORD_INIT_SETTING:Ljava/lang/String; = "start_record_init_setting"

.field public static final START_RECORD_START_AI_AUDIO:Ljava/lang/String; = "start_record_start_ai_audio"

.field public static final START_RECORD_START_DEVICE_RECORD:Ljava/lang/String; = "start_record_device_record"

.field public static final START_RECORD_UI_PREPARE:Ljava/lang/String; = "start_record_ui_prepare"

.field public static final STOP_RECORD_MEDIA_RECORDER:Ljava/lang/String; = "stop_record_media_recorder"

.field public static final STOP_RECORD_RECORDER_RELEASE:Ljava/lang/String; = "stop_record_recorder_release"


# instance fields
.field public final synthetic this$0:Lcom/android/camera/performance/Action;


# direct methods
.method public constructor <init>(Lcom/android/camera/performance/Action;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/performance/Action$Record;->this$0:Lcom/android/camera/performance/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
