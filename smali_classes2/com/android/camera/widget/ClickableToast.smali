.class public Lcom/android/camera/widget/ClickableToast;
.super Landroid/widget/Toast;
.source "ClickableToast.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mTextView:Landroid/widget/TextView;

.field public final mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/widget/ClickableToast;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/widget/ClickableToast;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/widget/ClickableToast;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0191

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/widget/ClickableToast;->mView:Landroid/view/View;

    const v0, 0x7f0a0416

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/widget/ClickableToast;->mTextView:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/android/camera/widget/ClickableToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    const-string p1, "mipro-medium"

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/camera/widget/ClickableToast;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 8
    invoke-direct {p0, p0, p2}, Lcom/android/camera/widget/ClickableToast;->setClickableToast(Landroid/widget/Toast;Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/widget/ClickableToast;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method private getLayoutParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 1
    :try_start_0
    const-class p0, Landroid/widget/Toast;

    const-string v0, "mTN"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/widget/Toast;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$TN"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "mParams"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    sget-object p1, Lcom/android/camera/widget/ClickableToast;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Toast reflection failed"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private setClickableToast(Landroid/widget/Toast;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ClickableToast;->getLayoutParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x7f6

    .line 2
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0x88

    .line 3
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p2, :cond_1

    const/high16 p2, 0x80000

    or-int/2addr p1, p2

    .line 4
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/widget/ClickableToast;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public setText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/widget/ClickableToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/ClickableToast;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/camera/widget/ClickableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/widget/ClickableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
