.class public Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;
.super Ljava/lang/Object;
.source "GifEditLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/gif/GifEditLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GifTextWatcher"
.end annotation


# instance fields
.field public after:I

.field public count:I

.field public currentIndex:I

.field public length:I

.field public start:I

.field public final synthetic this$0:Lcom/android/camera/features/gif/GifEditLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/GifEditLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-gt v0, v4, :cond_11

    if-le v0, v3, :cond_0

    const-string v0, "\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p0}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v4}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p0}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    .line 8
    :cond_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 9
    iget-object v4, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v4}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    .line 10
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 11
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v4, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v4}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/high16 v5, 0x40400000    # 3.0f

    .line 13
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 14
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v4}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v5}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 16
    iput v2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    move v4, v2

    move v5, v4

    move v6, v5

    .line 17
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    const/16 v8, 0x20

    const/16 v9, 0xa

    if-ge v4, v7, :cond_9

    .line 18
    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    iget v10, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    iget-object v11, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v11, v7}, Lcom/android/camera/features/gif/GifEditLayout;->access$500(Lcom/android/camera/features/gif/GifEditLayout;C)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x2

    goto :goto_2

    :cond_6
    move v11, v3

    :goto_2
    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    if-le v10, v8, :cond_7

    .line 20
    iput v8, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    goto :goto_4

    .line 21
    :cond_7
    iget-object v8, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v8}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v5, :cond_8

    .line 22
    iget v7, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_8

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    sub-int/2addr v7, v3

    if-eq v4, v7, :cond_8

    .line 23
    iget-object v5, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v5}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v3

    move v6, v4

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 24
    :cond_9
    :goto_4
    iget-object v4, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_a

    move v2, v3

    :cond_a
    invoke-static {v4, v2}, Lcom/android/camera/features/gif/GifEditLayout;->access$600(Lcom/android/camera/features/gif/GifEditLayout;Z)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    iget v2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v2}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    .line 27
    :cond_b
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->start:I

    if-gt v0, v6, :cond_c

    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->after:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->count:I

    iget v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->after:I

    if-eq v0, v1, :cond_c

    .line 30
    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    .line 31
    :cond_c
    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    .line 32
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_7

    .line 33
    :cond_d
    :goto_5
    iget v2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->start:I

    add-int/lit8 v4, v6, 0x1

    if-ne v2, v4, :cond_e

    iget v2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->after:I

    if-nez v2, :cond_e

    iget v2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->count:I

    if-ne v2, v3, :cond_e

    .line 34
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 35
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_6

    .line 39
    :cond_e
    iget v2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    if-ne v2, v8, :cond_f

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 40
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 42
    :cond_f
    :goto_6
    iget p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    if-nez p1, :cond_10

    .line 43
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p0}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    return-void

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void

    .line 45
    :cond_11
    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$102(Lcom/android/camera/features/gif/GifEditLayout;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    if-eq p4, p3, :cond_4

    if-nez p4, :cond_2

    sub-int p1, p2, p3

    add-int/lit8 p1, p1, 0x1

    .line 3
    iput p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 4
    iget p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    const/16 v0, 0x20

    if-ne p1, v0, :cond_3

    .line 5
    iget p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    goto :goto_1

    :cond_3
    add-int p1, p2, p4

    .line 6
    iput p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    .line 7
    :cond_4
    :goto_1
    iput p2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->start:I

    .line 8
    iput p3, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->count:I

    .line 9
    iput p4, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->after:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/features/gif/GifEditLayout;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
