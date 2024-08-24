.class public Lcom/android/camera/fragment/TipPresentation$1;
.super Ljava/lang/Object;
.source "TipPresentation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/TipPresentation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/TipPresentation;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/TipPresentation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/TipPresentation$1;->this$0:Lcom/android/camera/fragment/TipPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/display/device/FlatSelfieManager;->getInstance()Lcom/android/camera/display/device/FlatSelfieManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/display/device/FlatSelfieManager;->stopTimer()V

    return-void
.end method
