.class public Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;
.super Ljava/lang/Object;
.source "FloatingActivitySwitcher.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefineOnFloatingActivityCallback"
.end annotation


# instance fields
.field public mAppCompatActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mAppCompatActivityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private addLastActivityPanel(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getLastActivityPanel()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroupOverlay;->clear()V

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private checkFinishEnable(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$200(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-eq p1, v0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private shouldTopFloatingClose(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 2
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$300(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public checkActivity(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mAppCompatActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method public getPageCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$300(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getSnapShotAndSetPanel(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->generateSnapShotView(Landroid/content/Context;Lmiuix/appcompat/app/AppCompatActivity;)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    if-nez v2, :cond_1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    .line 4
    :cond_1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->setLastActivityPanel(Landroid/view/View;)V

    .line 5
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->addLastActivityPanel(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_2
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->checkActivity(Lmiuix/appcompat/app/AppCompatActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$300(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->showFloatingBrightPanel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {v0, p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$400(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onFinish(I)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->checkFinishEnable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->shouldTopFloatingClose(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$100(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)V

    :goto_0
    return v1
.end method

.method public onHideBehindPage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {v0, p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$400(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method
