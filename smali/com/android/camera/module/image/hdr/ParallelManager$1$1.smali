.class public Lcom/android/camera/module/image/hdr/ParallelManager$1$1;
.super Ljava/lang/Object;
.source "ParallelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/image/hdr/ParallelManager$1;->onSessionStatusFlawResultData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/module/image/hdr/ParallelManager$1;

.field public final synthetic val$config:Lcom/android/camera/protocol/protocols/TopAlert;

.field public final synthetic val$flawResult:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/hdr/ParallelManager$1;ILcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/hdr/ParallelManager$1$1;->this$1:Lcom/android/camera/module/image/hdr/ParallelManager$1;

    iput p2, p0, Lcom/android/camera/module/image/hdr/ParallelManager$1$1;->val$flawResult:I

    iput-object p3, p0, Lcom/android/camera/module/image/hdr/ParallelManager$1$1;->val$config:Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget v1, p0, Lcom/android/camera/module/image/hdr/ParallelManager$1$1;->val$flawResult:I

    const/4 v2, 0x1

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x0

    const-string v6, "attr_asd_flaw_tip"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/ParallelManager$1$1;->val$config:Lcom/android/camera/protocol/protocols/TopAlert;

    if-eqz p0, :cond_1

    const v1, 0x7f120623

    .line 4
    invoke-interface {p0, v5, v1, v3, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_1
    const-string p0, "asd_flaw_blink_more"

    .line 5
    invoke-interface {v0, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/ParallelManager$1$1;->val$config:Lcom/android/camera/protocol/protocols/TopAlert;

    if-eqz p0, :cond_3

    const v1, 0x7f120624

    .line 7
    invoke-interface {p0, v5, v1, v3, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_3
    const-string p0, "asd_flaw_blink_one"

    .line 8
    invoke-interface {v0, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/image/hdr/ParallelManager$1$1;->val$config:Lcom/android/camera/protocol/protocols/TopAlert;

    if-eqz p0, :cond_5

    const v1, 0x7f120625

    .line 10
    invoke-interface {p0, v5, v1, v3, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_5
    const-string p0, "asd_flaw_cover"

    .line 11
    invoke-interface {v0, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "key_common_tips"

    .line 12
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->miStatEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
