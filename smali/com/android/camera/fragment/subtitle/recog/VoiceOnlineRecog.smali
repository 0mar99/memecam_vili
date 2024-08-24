.class public Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;
.super Ljava/lang/Object;
.source "VoiceOnlineRecog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;
    }
.end annotation


# static fields
.field public static final FINAL_RESULT_TYPE:Ljava/lang/String; = "0"

.field public static final SOCKET_TIME_OUT:I = 0x4e20

.field public static final TAG:Ljava/lang/String; = "VoiceOnlineRecog"


# instance fields
.field public final SAMPLE_RATE:I

.field public final StatusContinueFrame:I

.field public final StatusFirstFrame:I

.field public final StatusLastFrame:I

.field public context:Landroid/content/Context;

.field public currentStatus:I

.field public handler:Landroid/os/Handler;

.field public isPauseRecording:Z

.field public isPcmRecorderWorking:Z

.field public isStopRecording:Z

.field public mCanStartRecord:Z

.field public mEdTime:Ljava/lang/String;

.field public mNeedRemoveTime:J

.field public mPauseRecordingTime:J

.field public mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

.field public mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

.field public mRecordStopSid:Ljava/lang/String;

.field public mResultEmitter:Lio/reactivex/CompletableEmitter;

.field public mResumeRecordingTime:J

.field public mSid:Ljava/lang/String;

.field public mStTime:Ljava/lang/String;

.field public mStartRecordingTime:J

.field public mType:Ljava/lang/String;

.field public recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

.field public srtBuilder:Ljava/lang/StringBuilder;

.field public srtRowNum:I

.field public webSocket:Lokhttp3/WebSocket;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    const/16 v1, 0x3e80

    .line 3
    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->SAMPLE_RATE:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    .line 5
    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusFirstFrame:I

    .line 6
    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusContinueFrame:I

    const/4 v1, 0x2

    .line 7
    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusLastFrame:I

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mType:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    .line 10
    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->handler:Landroid/os/Handler;

    .line 12
    new-instance v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

    .line 13
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    return p1
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    return-wide v0
.end method

.method public static synthetic access$1200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStartRecordingTime:J

    return-wide v0
.end method

.method public static synthetic access$1300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResumeRecordingTime:J

    return-wide v0
.end method

.method public static synthetic access$1400(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mEdTime:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStTime:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mSid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mRecordStopSid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->showSubtitleContent(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lokhttp3/WebSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2108(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    return v0
.end method

.method public static synthetic access$2200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    return p0
.end method

.method public static synthetic access$302(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->stopPcmRecorder()V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "sid"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    sget-object v2, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subtitle sid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mSid:Ljava/lang/String;

    :cond_1
    const-string p1, "data"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "result"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "cn"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "st"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "type"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mType:Ljava/lang/String;

    const-string v0, "bg"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStTime:Ljava/lang/String;

    const-string v0, "ed"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mEdTime:Ljava/lang/String;

    const-string/jumbo p0, "rt"

    .line 14
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "ws"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, p1

    .line 17
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 18
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "cw"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "w"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 22
    sget-object p1, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContent: Exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-wide p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    sub-long/2addr v0, p0

    .line 3
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "HH:mm:ss,SSS"

    invoke-direct {p0, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p1, "GMT+00:00"

    .line 4
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initWebSocket()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getSubtitleAccessAppKey()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getSubtitleAccessAppSecret()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getSubtitleUrl()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2, v0, v1}, Lcom/android/camera/fragment/subtitle/recog/AuthUtils;->assembleRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 7
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 8
    new-instance v2, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;)V

    invoke-virtual {v1, v0, v2}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    return-void
.end method

.method private showSubtitleContent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSubtitleContent fail , isPauseRecording "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0O0O00/OooO0O0/OooO0O0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0O0O00/OooO0O0/OooO0O0;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopPcmRecorder()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPcmRecorder "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopPcmRecorder: already stopped."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lokhttp3/WebSocket;->cancel()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->stopRecord(Z)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResultEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz p0, :cond_2

    .line 10
    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lio/reactivex/CompletableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResultEmitter:Lio/reactivex/CompletableEmitter;

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->onRecognitionListener(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSubtitleContent()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getSubtitleContentAsync(Lcom/android/camera/protocol/protocols/SubtitleRecording$Listener;J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubtitleContentAsync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0O0O00/OooO0O0/OooO00o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0O0O00/OooO0O0/OooO00o;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, p2, p3, v1}, Lio/reactivex/Completable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object p2

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p2

    new-instance p3, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Lcom/android/camera/protocol/protocols/SubtitleRecording$Listener;)V

    .line 6
    invoke-virtual {p2, p3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/CompletableObserver;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getSubtitleContent()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/SubtitleRecording$Listener;->onResult(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->stopPcmRecorder()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public pauseRecording()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public resumeRecording()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResumeRecordingTime:J

    .line 2
    iget-wide v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    iget-wide v4, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public setRecognitionListener(Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    return-void
.end method

.method public startRecording()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStartRecordingTime:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    .line 8
    iget-boolean v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    if-eqz v1, :cond_2

    .line 9
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    if-eqz v1, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->stopPcmRecorder()V

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->initWebSocket()V

    .line 12
    new-instance v1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    const/16 v2, 0x3e80

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    .line 13
    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->startRecording(Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;)V

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    .line 3
    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecording:current subtitle type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mType:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->stopPcmRecorder()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mSid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mRecordStopSid:Ljava/lang/String;

    return-void
.end method
