.class public Lcom/android/camera/fragment/lighting/FragmentLightView$2;
.super Ljava/lang/Object;
.source "FragmentLightView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/lighting/FragmentLightView;->consumeResult(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/lighting/FragmentLightView;

.field public final synthetic val$topAlert:Lcom/android/camera/protocol/protocols/TopAlert;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/lighting/FragmentLightView;Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$2;->this$0:Lcom/android/camera/fragment/lighting/FragmentLightView;

    iput-object p2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$2;->val$topAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$2;->val$topAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$2;->this$0:Lcom/android/camera/fragment/lighting/FragmentLightView;

    invoke-static {p0}, Lcom/android/camera/fragment/lighting/FragmentLightView;->access$200(Lcom/android/camera/fragment/lighting/FragmentLightView;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertLightingTip(I)V

    :cond_0
    return-void
.end method
