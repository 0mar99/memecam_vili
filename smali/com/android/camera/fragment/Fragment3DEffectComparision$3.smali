.class public Lcom/android/camera/fragment/Fragment3DEffectComparision$3;
.super Ljava/lang/Object;
.source "Fragment3DEffectComparision.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/Fragment3DEffectComparision;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/Fragment3DEffectComparision;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/Fragment3DEffectComparision;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision$3;->this$0:Lcom/android/camera/fragment/Fragment3DEffectComparision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision$3;->this$0:Lcom/android/camera/fragment/Fragment3DEffectComparision;

    invoke-static {p0}, Lcom/android/camera/fragment/Fragment3DEffectComparision;->access$000(Lcom/android/camera/fragment/Fragment3DEffectComparision;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/Fragment3DEffectComparision;->expandViewTouchDelegate(Landroid/view/View;)V

    return-void
.end method
