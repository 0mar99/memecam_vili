.class public Lcom/android/camera/features/mode/pano/pano3/Panorama3ModeUI$2;
.super Ljava/lang/Object;
.source "Panorama3ModeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/pano/pano3/Panorama3ModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/pano/pano3/Panorama3ModeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/pano/pano3/Panorama3ModeUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/pano/pano3/Panorama3ModeUI$2;->this$0:Lcom/android/camera/features/mode/pano/pano3/Panorama3ModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    const/16 p1, 0xa9

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 4
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateConfigItem([I)V

    :cond_1
    return-void
.end method
