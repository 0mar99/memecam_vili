.class public Lcom/android/camera/AudioRecordingDetector$InstanceHolder;
.super Ljava/lang/Object;
.source "AudioRecordingDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AudioRecordingDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field public static sInstance:Lcom/android/camera/AudioRecordingDetector;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/AudioRecordingDetector;

    invoke-direct {v0}, Lcom/android/camera/AudioRecordingDetector;-><init>()V

    sput-object v0, Lcom/android/camera/AudioRecordingDetector$InstanceHolder;->sInstance:Lcom/android/camera/AudioRecordingDetector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/camera/AudioRecordingDetector;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/AudioRecordingDetector$InstanceHolder;->sInstance:Lcom/android/camera/AudioRecordingDetector;

    return-object v0
.end method
