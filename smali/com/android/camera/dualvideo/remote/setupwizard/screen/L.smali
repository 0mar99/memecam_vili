.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;
.super Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;
.source "L.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;

.field public mConfirmationDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mIsSuspended:Z

.field public final mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field public final mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field public final mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mTempSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/camera/dualvideo/remote/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;Landroid/view/View;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mTempSet:Ljava/util/Set;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mIsSuspended:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getContentView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0360

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    new-instance p1, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;

    invoke-direct {p1}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const-wide/16 v0, 0x96

    .line 7
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$ItemDecoration;

    invoke-direct {p2, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$ItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    const p2, 0x7f080411

    .line 12
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 14
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 15
    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;IILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/Map;)V
    .locals 2

    const-string v0, "attr_rol_suw_conn"

    const-string/jumbo v1, "timed_out"

    .line 1
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/util/Map;)V
    .locals 2

    const-string v0, "attr_rol_suw_conn"

    const-string v1, "failed"

    .line 1
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mConfirmationDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mConfirmationDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mIsSuspended:Z

    return p1
.end method

.method private updateDataSet()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateDataSet: controller is null"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mTempSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mTempSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->populateAvailableRemoteDevices(Ljava/util/Set;)I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateDataSet: keep as is, available count = 0"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getSelectedRemoteDeviceId()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    sget-object v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDataSet: full update, available count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getRemoteDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getRemoteDeviceList()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mTempSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->updateDataSet()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onClick: controller is null"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;

    if-eqz p1, :cond_7

    .line 4
    iget v1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getSelectedRemoteDeviceId()I

    move-result v1

    const v3, 0x7f1208fc

    if-ne v1, v2, :cond_2

    .line 6
    sget-object v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClick: unselected state"

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v3}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setAlertDialogTitle(I)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    sget-object v2, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_CANCEL_CONNECTION:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {v1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    sget-object v2, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_RESET_STATE:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {v1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    const-string v1, "attr_rol_suw_conn"

    const-string/jumbo v2, "start"

    .line 10
    invoke-static {v1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->setSelectedRemoteDeviceId(I)V

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->startNetworkServer()V

    .line 13
    iget p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceId:I

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->connect(I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_CANCEL_CONNECTION:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->startTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    return-void

    .line 15
    :cond_2
    iget v1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceId:I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getSelectedRemoteDeviceId()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 16
    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick: not clickable: holder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", selected = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getSelectedRemoteDeviceId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getSelectedRemoteDeviceId()I

    move-result v1

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;

    move-result-object v1

    if-nez v1, :cond_4

    .line 21
    sget-object p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onClick: can\'t find selected device"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_4
    sget-object v2, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick: current selected device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget v2, v1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    const/4 v1, 0x3

    if-eq v2, v1, :cond_5

    const/4 v1, 0x4

    if-eq v2, v1, :cond_5

    const/4 v1, 0x5

    if-eq v2, v1, :cond_5

    goto/16 :goto_0

    .line 24
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setAlertDialogTitle(I)V

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    sget-object v2, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_CANCEL_CONNECTION:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {v1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    sget-object v2, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_RESET_STATE:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {v1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->setSelectedRemoteDeviceId(I)V

    .line 28
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->startNetworkServer()V

    .line 29
    iget p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceId:I

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->connect(I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_CANCEL_CONNECTION:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->startTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    goto :goto_0

    .line 31
    :cond_6
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object v3

    const v5, 0x7f1208f1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->name:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12034f

    new-instance v4, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$3;

    invoke-direct {v4, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$3;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;)V

    .line 33
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120354

    new-instance v4, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    .line 34
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mConfirmationDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 36
    new-instance v2, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$4;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Lcom/android/camera/dualvideo/remote/RemoteOnlineController;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mConfirmationDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v2, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$5;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Lcom/android/camera/dualvideo/remote/RemoteOnlineController;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mConfirmationDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v7}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mConfirmationDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v7}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mConfirmationDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    .line 41
    :cond_7
    :goto_1
    sget-object p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onClick: illegal view holder"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectivityStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mIsSuspended:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onConnectivityStateChanged: suspended"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget v0, p1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000O/OooO00o/OooO0OO/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000O/OooO00o/OooO0OO/OooO00o;

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000O/OooO00o/OooO0OO/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000O/OooO00o/OooO0OO/OooO0O0;

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V

    .line 7
    :cond_2
    :goto_0
    iget p1, p1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_CANCEL_CONNECTION:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_RESET_STATE:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->startTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    goto :goto_1

    .line 11
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_CANCEL_CONNECTION:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_RESET_STATE:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->dismiss()V

    goto :goto_1

    .line 14
    :pswitch_2
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mConfirmationDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mConfirmationDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_CANCEL_CONNECTION:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_RESET_STATE:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V

    :cond_0
    const v0, 0x7f1208f0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setAlertDialogTitle(I)V

    const/4 v0, -0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getAlertDialogButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f12034f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mIsSuspended:Z

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getAlertDialogButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTimeReached(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getSelectedRemoteDeviceId()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$6;->$SwitchMap$com$android$camera$dualvideo$remote$setupwizard$SetupWizard$Timer:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const v2, 0x7f1208f0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTimeReached: reset device state"

    invoke-static {p1, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setAlertDialogTitle(I)V

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 6
    iput p1, v0, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->setSelectedRemoteDeviceId(I)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->updateDataSet()V

    .line 9
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTimeReached: cancel connection"

    invoke-static {p1, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setAlertDialogTitle(I)V

    if-eqz v0, :cond_3

    const/4 p1, 0x5

    .line 12
    iput p1, v0, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setupViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->mAdapter:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
