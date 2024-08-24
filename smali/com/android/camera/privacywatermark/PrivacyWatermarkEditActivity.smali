.class public Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "PrivacyWatermarkEditActivity.java"

# interfaces
.implements Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;


# static fields
.field public static final MAX_EDIT_HISTORY:I = 0xa

.field public static final TAG:Ljava/lang/String; = "PrivacyWatermarkEditActivity"


# instance fields
.field public mButtonClearHistory:Landroid/widget/TextView;

.field public mButtonSave:Landroid/widget/ImageButton;

.field public mCountTip:Landroid/widget/TextView;

.field public mDisposable:Lio/reactivex/disposables/Disposable;

.field public mEditView:Landroid/widget/EditText;

.field public final mGson:Lcom/google/gson/Gson;

.field public mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

.field public mHistoryLabel:Landroid/widget/TextView;

.field public final mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    new-instance v0, Landroid/util/Pair;

    invoke-static {}, Lcom/android/camera/privacyutil/ContentUtil;->getInstance()Lcom/android/camera/privacyutil/ContentUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/privacyutil/ContentUtil;->checkContentCompliance(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic access$000(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->updateEditState(Ljava/lang/String;)V

    return-void
.end method

.method private clearHistory()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    iget-object v1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->submitList(Ljava/util/List;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->toggleHistoryView()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEditHistory(Ljava/lang/String;)V

    return-void
.end method

.method private save(Ljava/lang/String;)V
    .locals 2

    const-string v0, "PrivacyWatermarkEditActivity"

    const-string/jumbo v1, "saveContent: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setPrivacyWatermark(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEnabled(Z)V

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->updateHistory(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEnabled(Z)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private toggleHistoryView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateEditState(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mCountTip:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0b002f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const p1, 0x7f120a26

    .line 4
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHistory(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEditHistory(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO00o(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->save(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f120332

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->clearHistory()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->toggleHistoryView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;Z)V

    :cond_0
    const p1, 0x7f0d0021

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera/ui/privacylogo/PrivacyLogoUtils;->getPrivacyLogoWrappedLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isFromSecureKeyguard()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermarkEditHistory()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$1;

    invoke-direct {v2, p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$1;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    .line 9
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const p1, 0x7f0a00b5

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f0a00b6

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonSave:Landroid/widget/ImageButton;

    const v0, 0x7f0a0154

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    const v0, 0x7f0a0107

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mCountTip:Landroid/widget/TextView;

    const v0, 0x7f0a01d4

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryLabel:Landroid/widget/TextView;

    const v0, 0x7f0a00b4

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    .line 17
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO0o0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO0o0;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    new-instance v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$2;

    invoke-direct {v0, p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$2;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 19
    new-instance p1, Lcom/android/camera/privacyutil/RxViewAction;

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-direct {p1, v0}, Lcom/android/camera/privacyutil/RxViewAction;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/android/camera/privacyutil/RxViewClick;

    iget-object v1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonSave:Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Lcom/android/camera/privacyutil/RxViewClick;-><init>(Landroid/view/View;)V

    invoke-static {p1, v0}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO0O0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO0O0;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    .line 21
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 22
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO0o;

    .line 23
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 24
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO0OO;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO0OO;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    .line 25
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    .line 26
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO0Oo;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/Oooooo/OooO0Oo;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->toggleHistoryView()V

    .line 28
    new-instance p1, Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    invoke-direct {p1}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    .line 29
    invoke-virtual {p1, p0}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->setEventListener(Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->submitList(Ljava/util/List;)V

    const p1, 0x7f0a01d5

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 35
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 38
    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/android/camera/Util;->showInputMethodDelayed(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onItemClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method
