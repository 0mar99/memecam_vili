.class public Lcom/android/camera/features/gif/FragmentGifEdit;
.super Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;
.source "FragmentGifEdit.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/MimojiGifEditor;


# static fields
.field public static final FRAGMENT_INFO:I = 0xfff4

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final backtrackAction:Ljava/lang/Runnable;

.field public isBackToPreviewState:Z

.field public mBackBtn:Landroid/widget/ImageView;

.field public mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field public mConcatProgressBar:Landroid/widget/ProgressBar;

.field public mConfirmBtn:Landroid/widget/ImageView;

.field public mContext:Landroid/content/Context;

.field public mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

.field public mDuration:J

.field public mGifBitmap:Landroid/graphics/Bitmap;

.field public mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

.field public mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

.field public mGifViewLayout:Landroid/view/View;

.field public mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

.field public mIlShare:Landroid/widget/LinearLayout;

.field public mIsNeedCombine:Z

.field public mIsShare:Z

.field public mLlTextureContainer:Landroid/widget/FrameLayout;

.field public mPreviewCoverView:Landroid/widget/ImageView;

.field public mTextureView:Landroid/view/TextureView;

.field public mVideoPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->isBackToPreviewState:Z

    .line 3
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 4
    new-instance v0, Lcom/android/camera/features/gif/FragmentGifEdit$2;

    invoke-direct {v0, p0}, Lcom/android/camera/features/gif/FragmentGifEdit$2;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->backtrackAction:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/camera/privacyutil/ContentUtil;->getInstance()Lcom/android/camera/privacyutil/ContentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/privacyutil/ContentUtil;->checkContentCompliance(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0O0(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/camera/privacyutil/ContentUtil;->getInstance()Lcom/android/camera/privacyutil/ContentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/privacyutil/ContentUtil;->checkContentCompliance(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/features/gif/FragmentGifEdit;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/features/gif/FragmentGifEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/features/gif/FragmentGifEdit;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/gif/FragmentGifEdit;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->backtrackAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/features/gif/FragmentGifEdit;)Lcom/android/camera/features/gif/GifMediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    return-object p0
.end method

.method private backToPreview()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->isBackToPreviewState:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string v0, "Repeat entry backToPreview: "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->isBackToPreviewState:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    sget-object p0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string v0, "getActivity is null "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO00o;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initGifMediaPlayer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oo0O()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    const-string v3, "close_state"

    .line 4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v3, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifViewPresenter;->setGifMediaPlayer(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setPreviewCoverView(Landroid/widget/ImageView;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setConcatProgressBar(Landroid/widget/ProgressBar;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setGifEditLayout(Lcom/android/camera/features/gif/GifEditLayout;)V

    .line 12
    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    if-eqz v0, :cond_3

    .line 13
    iput-boolean v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/features/gif/FragmentGifEdit;->combineVideoAudio(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method private saveContent()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "saveContent: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEditChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

    invoke-direct {p0, v0}, Lcom/android/camera/features/gif/FragmentGifEdit;->saveGif(Lcom/android/camera/storage/mediastore/ImageFile;)V

    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->startVideo2Gif()V

    return-void
.end method

.method private saveGif(Lcom/android/camera/storage/mediastore/ImageFile;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string v1, "coverGifSuccess saveGif: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f120037

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->announceForAccessibility(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/ImageFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/ImageFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    const/16 v2, 0x12c

    .line 6
    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/camera/storage/ImageSaver;->addGif(Ljava/lang/String;Landroid/net/Uri;II)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    return-void
.end method

.method private shareGif(Lcom/android/camera/storage/mediastore/ImageFile;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string v1, "coverGifSuccess shareGif: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/ImageFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/ImageFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    const/16 v2, 0x12c

    .line 7
    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/camera/storage/ImageSaver;->addGifSync(Ljava/lang/String;Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0O0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0O0;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showExitConfirm()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/gif/FragmentGifEdit$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/gif/FragmentGifEdit$1;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->createExitConfirmDialog(Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;)V

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

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO00o(Landroid/net/Uri;)V
    .locals 2

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.STREAM"

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "image/gif"

    .line 16
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f120913

    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 18
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: ll_gif_share"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object p0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string p1, "mGifMediaPlayer is unEnable: "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/gif/GifEditLayout;->hideBorder(Z)V

    const/4 p1, 0x0

    const-string v0, "mimoji_gif_share"

    .line 8
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    .line 10
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEditChanged()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

    if-eqz p1, :cond_1

    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->shareGif(Lcom/android/camera/storage/mediastore/ImageFile;)V

    return-void

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->startVideo2Gif()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120332

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic OooO0O0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO0O0()V
    .locals 3

    .line 12
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->onReviewCancelClicked()V

    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCombineError[] cameraAction null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onFinish()V

    goto :goto_0

    .line 18
    :cond_1
    sget-object v0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCombineError[] recordState null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->backtrackAction:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic OooO0O0(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: iv_gif_confirm"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object p0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string p1, "mGifMediaPlayer is unEnable: "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/gif/GifEditLayout;->hideBorder(Z)V

    const/4 p1, 0x0

    const-string v1, "mimoji_gif_save"

    .line 8
    invoke-static {p1, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->saveContent()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120332

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public combineVideoAudio(Ljava/lang/String;J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "combineVideoAudio: savePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string p2, "combineVideoAudio[savePath] mGifMediaPlayer null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_1

    .line 8
    sget-object p1, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string p2, "combineVideoAudio: gifMediaPlayer surface is null "

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object p2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setVideoUrl(Ljava/lang/String;J)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object p2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->openVideoUrl(Ljava/lang/String;J)V

    return-void
.end method

.method public coverGifError()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    return-void
.end method

.method public coverGifSuccess(Lcom/android/camera/storage/mediastore/ImageFile;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpRecordVideo(II)V

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->shareGif(Lcom/android/camera/storage/mediastore/ImageFile;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->saveGif(Lcom/android/camera/storage/mediastore/ImageFile;)V

    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff4

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d008a

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string p1, " rootview null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0251

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mLlTextureContainer:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 8
    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    iget-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mLlTextureContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    const v1, 0x7f0a038a

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07022a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 14
    :cond_1
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 15
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/camera/features/gif/GifViewPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/features/gif/GifViewPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    .line 16
    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/camera/features/gif/GifViewPresenter;->initView(Landroid/view/View;)V

    const v1, 0x7f0a024f

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIlShare:Landroid/widget/LinearLayout;

    .line 18
    new-instance v2, Lcom/android/camera/privacyutil/RxViewClick;

    invoke-direct {v2, v1}, Lcom/android/camera/privacyutil/RxViewClick;-><init>(Landroid/view/View;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    .line 19
    invoke-virtual {v2, v3, v4, v1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0o0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0o0;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    .line 20
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 21
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0Oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0Oo;

    .line 22
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 23
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0OO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0OO;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    .line 24
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v2, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    const v1, 0x7f0a01c4

    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mTextureView:Landroid/view/TextureView;

    .line 27
    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01f6

    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    const v1, 0x7f0a00fb

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConcatProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0a01ac

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/gif/GifEditLayout;

    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const v1, 0x7f0a0209

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mBackBtn:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a020a

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConfirmBtn:Landroid/widget/ImageView;

    .line 34
    new-instance v1, Lcom/android/camera/privacyutil/RxViewClick;

    invoke-direct {v1, p1}, Lcom/android/camera/privacyutil/RxViewClick;-><init>(Landroid/view/View;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    invoke-virtual {v1, v3, v4, p1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0oo;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    .line 36
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 37
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0o;

    .line 38
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 39
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0oO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO00o/OooO0oO;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    .line 40
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 42
    invoke-static {}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->impl2()Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 43
    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->getPreviewCover()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    .line 44
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 45
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_1

    .line 47
    :cond_4
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 48
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {p1, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 49
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->initGifMediaPlayer()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-ne p1, v1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->showExitConfirm()V

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01c4

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0209

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: iv_gif_back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->showExitConfirm()V

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: gif_texture_view"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/GifEditLayout;->hideBorder(Z)V

    :goto_0
    return-void

    .line 7
    :cond_3
    :goto_1
    sget-object p1, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick reject: mGifMediaPlayer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d008a

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 3
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->isBackToPreviewState:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->release()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    .line 4
    sget-object p0, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->stopPlay()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifEditLayout;->hideBorder(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->isBackToPreviewState:Z

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/FragmentGifEdit;->initView(Landroid/view/View;)V

    return-void

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->resumePlay()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public operateGifPannelVisibleState(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/GifViewPresenter;->operateGifPannelVisibleState(I)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    sget-object p1, Lcom/android/camera/features/gif/FragmentGifEdit;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provideAnimateElement, animateInElements"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "resetType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    :cond_1
    return-void
.end method

.method public reconfigPreviewRadio(I)V
    .locals 0

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/MimojiGifEditor;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseMedia(Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    :cond_0
    return-void
.end method

.method public setPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public showPreviewCover(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/MimojiGifEditor;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method
