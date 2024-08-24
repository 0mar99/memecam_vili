.class public Lcom/android/camera/fragment/BaseFragmentDelegate$2;
.super Ljava/lang/Object;
.source "BaseFragmentDelegate.java"

# interfaces
.implements Lcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/BaseFragmentDelegate;->init(Landroidx/fragment/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/BaseFragmentDelegate;

.field public final synthetic val$fragmentBottomAction:Lcom/android/camera/fragment/BaseFragment;

.field public final synthetic val$supportFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/BaseFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate$2;->this$0:Lcom/android/camera/fragment/BaseFragmentDelegate;

    iput-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate$2;->val$supportFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate$2;->val$fragmentBottomAction:Lcom/android/camera/fragment/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate$2;->this$0:Lcom/android/camera/fragment/BaseFragmentDelegate;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate$2;->val$supportFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate$2;->val$fragmentBottomAction:Lcom/android/camera/fragment/BaseFragment;

    const/4 v0, 0x4

    invoke-static {p2, p3, p0, v0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->access$000(Lcom/android/camera/fragment/BaseFragmentDelegate;Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/BaseFragment;ILandroid/view/View;)V

    return-object p1
.end method
