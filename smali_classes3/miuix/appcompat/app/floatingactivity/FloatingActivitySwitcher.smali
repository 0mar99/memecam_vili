.class public Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
.super Ljava/lang/Object;
.source "FloatingActivitySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;
    }
.end annotation


# static fields
.field public static final SAVED_INSTANCE_KEY:Ljava/lang/String; = "floating_switcher_saved_key"

.field public static sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;


# instance fields
.field public final LAST_ACTIVITY_PANEL_TAG:Ljava/lang/String;

.field public mActivityCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field public mEnableDragToDismiss:Z

.field public mLastActivityPanel:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "last_activity_panel_tag"

    .line 2
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->LAST_ACTIVITY_PANEL_TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->closeTopActivity()V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->closeAllActivity()V

    return-void
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mEnableDragToDismiss:Z

    return p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->hideBehindPages(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method private closeAllActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private closeTopActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    return-void
.end method

.method public static getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    return-object v0
.end method

.method private hideBehindPages(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingBrightPanel()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private hideTopBgs()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingDimBackground()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private init(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->stashActivity(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 3
    iget-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mEnableDragToDismiss:Z

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->setEnableSwipToDismiss(Z)V

    .line 4
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;

    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;-><init>(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V

    return-void
.end method

.method public static install(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static install(Lmiuix/appcompat/app/AppCompatActivity;ZLandroid/os/Bundle;)V
    .locals 1

    .line 3
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-direct {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;-><init>()V

    sput-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 5
    iput-boolean p1, v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mEnableDragToDismiss:Z

    .line 6
    :cond_0
    sget-object p1, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-direct {p1, p0, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->init(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method private isActivityStashed(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static onSaveInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result p0

    const-string v0, "floating_switcher_saved_key"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private stashActivity(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->isActivityStashed(Lmiuix/appcompat/app/AppCompatActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    const-string v1, "floating_switcher_saved_key"

    .line 2
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->hideTopBgs()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mLastActivityPanel:Landroid/view/View;

    .line 3
    sput-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    return-void
.end method

.method public getActivityCache()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getLastActivityPanel()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mLastActivityPanel:Landroid/view/View;

    return-object p0
.end method

.method public getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->clear()V

    :cond_1
    return-void
.end method

.method public setLastActivityPanel(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mLastActivityPanel:Landroid/view/View;

    return-void
.end method
