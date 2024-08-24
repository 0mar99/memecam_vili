.class public Lcom/android/camera/module/interceptor/ASDConditionAllocation;
.super Ljava/lang/Object;
.source "ASDConditionAllocation.java"


# instance fields
.field public mAIWatermarkEnable:Z

.field public mAiSceneEnabled:Z

.field public mainContentProtocol:Lcom/android/camera/protocol/protocols/MainContentProtocol;

.field public topAlert:Lcom/android/camera/protocol/protocols/TopAlert;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAiSceneExternalCondition()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/ASDConditionAllocation;->mAiSceneEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/interceptor/ASDConditionAllocation;->mAIWatermarkEnable:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
