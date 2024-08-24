.class public Lcom/android/camera/timerburst/TimerBurstManager$2;
.super Ljava/lang/Object;
.source "TimerBurstManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/timerburst/TimerBurstManager;->realStartCount(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/timerburst/TimerBurstManager;

.field public final synthetic val$count:I

.field public final synthetic val$mode:I

.field public final synthetic val$module:Lcom/android/camera/module/Camera2Module;

.field public final synthetic val$repeatTimes:I


# direct methods
.method public constructor <init>(Lcom/android/camera/timerburst/TimerBurstManager;Lcom/android/camera/module/Camera2Module;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstManager$2;->this$0:Lcom/android/camera/timerburst/TimerBurstManager;

    iput-object p2, p0, Lcom/android/camera/timerburst/TimerBurstManager$2;->val$module:Lcom/android/camera/module/Camera2Module;

    iput p3, p0, Lcom/android/camera/timerburst/TimerBurstManager$2;->val$count:I

    iput p4, p0, Lcom/android/camera/timerburst/TimerBurstManager$2;->val$repeatTimes:I

    iput p5, p0, Lcom/android/camera/timerburst/TimerBurstManager$2;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstManager$2;->val$module:Lcom/android/camera/module/Camera2Module;

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstManager$2;->val$count:I

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstManager$2;->val$repeatTimes:I

    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstManager$2;->val$mode:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/module/Camera2Module;->startCount(III)V

    return-void
.end method
