.class public Lcom/android/camera/module/TimeFreezeModule$1;
.super Ljava/lang/Object;
.source "TimeFreezeModule.java"

# interfaces
.implements Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/TimeFreezeModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/TimeFreezeModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/TimeFreezeModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/TimeFreezeModule$1;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "value_time_freeze_drag_left_bar"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "value_time_freeze_drag_right_bar"

    .line 1
    :goto_0
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/TimeFreezeModule$1;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-static {p0}, Lcom/android/camera/module/TimeFreezeModule;->access$300(Lcom/android/camera/module/TimeFreezeModule;)V

    .line 3
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->editMultiCopy()V

    return-void
.end method

.method public onActionUp()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->saveDraft()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/CloneProcess;->updatePlayPos(F)V

    return-void
.end method

.method public onRangeChange(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/TimeFreezeModule$1;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-static {v0, p1}, Lcom/android/camera/module/TimeFreezeModule;->access$002(Lcom/android/camera/module/TimeFreezeModule;F)F

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/TimeFreezeModule$1;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-static {p1, p2}, Lcom/android/camera/module/TimeFreezeModule;->access$102(Lcom/android/camera/module/TimeFreezeModule;F)F

    .line 3
    invoke-static {}, Lcom/android/camera/module/TimeFreezeModule;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "double slide low: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/TimeFreezeModule$1;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-static {v0}, Lcom/android/camera/module/TimeFreezeModule;->access$000(Lcom/android/camera/module/TimeFreezeModule;)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", max:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/TimeFreezeModule$1;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-static {v0}, Lcom/android/camera/module/TimeFreezeModule;->access$100(Lcom/android/camera/module/TimeFreezeModule;)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/TimeFreezeModule$1;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-static {p1}, Lcom/android/camera/module/TimeFreezeModule;->access$000(Lcom/android/camera/module/TimeFreezeModule;)F

    move-result p1

    iget-object p0, p0, Lcom/android/camera/module/TimeFreezeModule$1;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-static {p0}, Lcom/android/camera/module/TimeFreezeModule;->access$100(Lcom/android/camera/module/TimeFreezeModule;)F

    move-result p0

    invoke-static {p1, p0}, Lcom/xiaomi/fenshen/FenShenCam;->onMoveDoubleSeekBar(FF)V

    return-void
.end method
