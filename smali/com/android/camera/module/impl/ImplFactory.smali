.class public Lcom/android/camera/module/impl/ImplFactory;
.super Ljava/lang/Object;
.source "ImplFactory.java"


# instance fields
.field public mAdditionalProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field public mBaseProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field public mPersistentProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field public mReleased:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized detach(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/BaseProtocol;

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/BaseProtocol;->unRegisterProtocol()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length p0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_19

    aget-object v1, p3, v0

    .line 3
    const-class v2, Lcom/android/camera/protocol/protocols/ConfigChanges;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 5
    :cond_1
    const-class v2, Lcom/android/camera/protocol/protocols/BackStack;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {p1}, Lcom/android/camera/module/impl/component/BackStackImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 7
    :cond_2
    const-class v2, Lcom/android/camera/protocol/protocols/DualVideoRenderProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    new-instance v1, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;-><init>(Landroid/content/res/Resources;)V

    goto/16 :goto_1

    .line 9
    :cond_3
    const-class v2, Lcom/android/camera/protocol/protocols/RemoteOnlineProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v1

    goto/16 :goto_1

    .line 11
    :cond_4
    const-class v2, Lcom/android/camera/protocol/protocols/StandaloneRecorderProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    new-instance v1, Lcom/android/camera/dualvideo/recorder/StandaloneRecorderProtocolImpl;

    invoke-direct {v1}, Lcom/android/camera/dualvideo/recorder/StandaloneRecorderProtocolImpl;-><init>()V

    goto/16 :goto_1

    .line 13
    :cond_5
    const-class v2, Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 15
    :cond_6
    const-class v2, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ShineChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ShineChangeImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 17
    :cond_7
    const-class v2, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 18
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 19
    :cond_8
    const-class v2, Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 20
    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 21
    :cond_9
    const-class v2, Lcom/android/camera/protocol/protocols/RecordState;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 22
    invoke-static {p1}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 23
    :cond_a
    const-class v2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 24
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oooo()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_b

    .line 25
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 26
    :cond_b
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 27
    :cond_c
    const-class v2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 28
    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 29
    :cond_d
    const-class v2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 30
    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 31
    :cond_e
    const-class v2, Lcom/android/camera/protocol/protocols/live/LiveConfigVV;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 32
    invoke-static {p1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 33
    :cond_f
    const-class v2, Lcom/android/camera/protocol/protocols/MiKeyEvent;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 34
    invoke-static {p1}, Lcom/android/camera/module/impl/component/KeyEventImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/protocols/MiKeyEvent;

    move-result-object v1

    goto/16 :goto_1

    .line 35
    :cond_10
    const-class v2, Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 36
    invoke-static {p1}, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;

    move-result-object v1

    goto :goto_1

    .line 37
    :cond_11
    const-class v2, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 38
    invoke-static {}, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;->create()Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v1

    goto :goto_1

    .line 39
    :cond_12
    const-class v2, Lcom/android/camera/protocol/protocols/SpeechShutterDetect;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 40
    invoke-static {}, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->create()Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v1

    goto :goto_1

    .line 41
    :cond_13
    const-class v2, Lcom/android/camera/protocol/protocols/FilmDreamConfig;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 42
    invoke-static {p1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/FilmDreamImpl;

    move-result-object v1

    goto :goto_1

    .line 43
    :cond_14
    const-class v2, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 44
    invoke-static {}, Lcom/android/camera/module/impl/component/VideoCastStateManager;->create()Lcom/android/camera/module/impl/component/VideoCastStateManager;

    move-result-object v1

    goto :goto_1

    .line 45
    :cond_15
    const-class v2, Lcom/android/camera/protocol/protocols/GalleryConnect;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 46
    invoke-static {p1}, Lcom/android/camera/module/impl/component/GalleryConnectImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/GalleryConnectImpl;

    move-result-object v1

    goto :goto_1

    .line 47
    :cond_16
    const-class v2, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 48
    invoke-static {p1}, Lcom/android/camera/fragment/PresentationDisplay;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/fragment/PresentationDisplay;

    move-result-object v1

    goto :goto_1

    .line 49
    :cond_17
    const-class v2, Lcom/android/camera/protocol/protocols/DisplayGuide;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 50
    invoke-static {p1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/DisplayGuideImp;

    move-result-object v1

    .line 51
    :goto_1
    invoke-interface {v1}, Lcom/android/camera/protocol/BaseProtocol;->registerProtocol()V

    .line 52
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 53
    :cond_18
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unknown protocol type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    return-void
.end method


# virtual methods
.method public detachAdditional()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public detachBase()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public detachModulePersistent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public final varargs initAdditional(Lcom/android/camera/ActivityBase;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[Ljava/lang/Class;)V

    return-void
.end method

.method public final varargs initBase(Lcom/android/camera/ActivityBase;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[Ljava/lang/Class;)V

    return-void
.end method

.method public final varargs initModulePersistent(Lcom/android/camera/ActivityBase;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[Ljava/lang/Class;)V

    return-void
.end method

.method public release()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachModulePersistent()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachBase()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    return-void
.end method
