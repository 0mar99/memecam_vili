.class public Lcom/android/camera/fragment/vv/FragmentVVFeature$4;
.super Ljava/lang/Object;
.source "FragmentVVFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVFeature;->onInstallStateChanged(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    iget-object v1, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    iget-object v0, v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/data/observeable/VMFeature;->removeFeature(Ljava/lang/String;)V

    return-void
.end method
