.class public Lcom/android/camera/performance/Action$AlgoCapture;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/performance/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlgoCapture"
.end annotation


# static fields
.field public static final ALGO_CAPTURE_TOTAL:Ljava/lang/String; = "algo_capture_total_"

.field public static final ALGO_DEVICE_CAPTURE:Ljava/lang/String; = "algo_device_capture"

.field public static final ALGO_DEVICE_MULTI_CAPTURE:Ljava/lang/String; = "algo_device_multi_capture_"

.field public static final ALGO_IMAGE_SAVE:Ljava/lang/String; = "algo_image_save_"

.field public static final ALGO_PREPARE_CAPTURE:Ljava/lang/String; = "algo_prepare_capture"

.field public static final ALGO_PROCESS:Ljava/lang/String; = "algo_process_"

.field public static final ALGO_REPROCESS:Ljava/lang/String; = "algo_reprocess_"


# instance fields
.field public final synthetic this$0:Lcom/android/camera/performance/Action;


# direct methods
.method public constructor <init>(Lcom/android/camera/performance/Action;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/performance/Action$AlgoCapture;->this$0:Lcom/android/camera/performance/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
