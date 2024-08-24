.class public Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;
.super Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;
.source "FragmentTopAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlertRecommendDescRunable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

.field public tipType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->tipType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public runToSafe()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const-string/jumbo v1, "unknow"

    invoke-static {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2202(Lcom/android/camera/fragment/top/FragmentTopAlert;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$1800(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$1500(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->tipType:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setTipsState(Ljava/lang/String;Z)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlertEvent;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/Oooo0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/Oooo0OO;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setTipType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->tipType:Ljava/lang/String;

    return-void
.end method
