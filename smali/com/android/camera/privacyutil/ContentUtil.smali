.class public Lcom/android/camera/privacyutil/ContentUtil;
.super Ljava/lang/Object;
.source "ContentUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/privacyutil/ContentUtil$Singleton;
    }
.end annotation


# static fields
.field public static final MIN_TIME_ALLOWED_DETECT:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "ContentUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/privacyutil/ContentUtil$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/privacyutil/ContentUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/privacyutil/ContentUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/privacyutil/ContentUtil$Singleton;->INSTANCE:Lcom/android/camera/privacyutil/ContentUtil;

    return-object v0
.end method


# virtual methods
.method public checkContentCompliance(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/riskcontrol/SensitiveWordUtils;->isSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ContentUtil"

    const-string p1, "SDK is unsupported"

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/riskcontrol/SensitiveWordUtils;->detect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
