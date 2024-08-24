.class public Lcom/android/camera/features/mode/portrait/PortraitModeUI$4;
.super Ljava/lang/Object;
.source "PortraitModeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/portrait/PortraitModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/portrait/PortraitModeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$4;->this$0:Lcom/android/camera/features/mode/portrait/PortraitModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xcf

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->onTopAnimClick(Landroid/view/View;)V

    return-void
.end method
