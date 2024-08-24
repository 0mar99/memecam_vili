.class public Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;
.super Ljava/lang/Object;
.source "MimojiAsBottomListDataImpl.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;


# static fields
.field public static final HUMAN_DESC:[I

.field public static final TAG:Ljava/lang/String;

.field public static final human:[I


# instance fields
.field public final resourceBg:[I

.field public final resourceBgDesc:[I

.field public final resourceTimbre:[I

.field public final resourceTimbreDesc:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->human:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->HUMAN_DESC:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x2
        0x3
        0x0
        0x1
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7f12053b
        0x7f120542
        0x7f120543
        0x7f12053c
        0x7f120541
        0x7f120540
        0x7f12053f
        0x7f12053d
        0x7f12053e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->resourceBg:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->resourceBgDesc:[I

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->resourceTimbreDesc:[I

    return-void

    :array_0
    .array-data 4
        0x7f080368
        0x7f080367
        0x7f080364
        0x7f080369
        0x7f080366
        0x7f080362
    .end array-data

    :array_1
    .array-data 4
        0x7f1204ee
        0x7f1204eb
        0x7f1204ec
        0x7f1204ed
        0x7f1204ea
        0x7f1204e9
    .end array-data

    :array_2
    .array-data 4
        0x7f08036f
        0x7f080371
        0x7f080370
        0x7f08036e
        0x7f080373
    .end array-data

    :array_3
    .array-data 4
        0x7f12099c
        0x7f12099e
        0x7f12099d
        0x7f12099b
        0x7f1209a0
    .end array-data
.end method


# virtual methods
.method public initAvatarData(ILjava/util/List;)I
    .locals 12

    const-string p0, "/"

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/16 v0, 0x64

    const v1, 0x7f12047d

    const-string v2, "close_state"

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x1

    if-ne p1, v0, :cond_8

    .line 2
    :try_start_0
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 3
    iput-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 4
    iput-wide v3, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mDirectoryName:J

    .line 5
    iput v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    const-string v0, "add_state"

    .line 8
    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 9
    iput-wide v3, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mDirectoryName:J

    const v0, 0x7f12001e

    .line 10
    iput v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    .line 11
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 16
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 17
    new-instance v6, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {v6}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 18
    sget-object v7, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    .line 19
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 21
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "config.dat"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 22
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "pic.png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 23
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 25
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-static {v4}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v9}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 27
    iput-object v4, v6, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 28
    iput-object v9, v6, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 29
    iput-object v8, v6, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mPackPath:Ljava/lang/String;

    .line 30
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mDirectoryName:J

    .line 31
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 34
    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 35
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 38
    :goto_2
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->human:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 39
    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 40
    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preconfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".dat"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v4}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 45
    iput-object v4, v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 46
    iput-object v4, v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mPackPath:Ljava/lang/String;

    .line 47
    iput-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 48
    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->HUMAN_DESC:[I

    aget v3, v3, v0

    iput v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    .line 49
    invoke-virtual {v1, v5}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setIsPreHuman(Z)V

    .line 50
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 51
    :cond_5
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 53
    :cond_6
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 54
    :cond_7
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_9

    .line 56
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 57
    :cond_8
    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 58
    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 59
    iput-wide v3, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mDirectoryName:J

    .line 60
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    .line 61
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 63
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_CAT:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string p1, "cat"

    .line 64
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cat.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cat1.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl2:Ljava/lang/String;

    const p1, 0x7f1204f2

    .line 67
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    const p1, 0x7f1204f3

    .line 68
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    .line 69
    invoke-virtual {p0, v5}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setDefaultFrame(I)V

    .line 70
    invoke-virtual {p0, v5}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setFrame(I)V

    .line 71
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 73
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_FROG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string p1, "frog"

    .line 74
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "frog.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "frog1.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl2:Ljava/lang/String;

    const p1, 0x7f1204f5

    .line 77
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    const p1, 0x7f1204f6

    .line 78
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    .line 79
    invoke-virtual {p0, v5}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setDefaultFrame(I)V

    .line 80
    invoke-virtual {p0, v5}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setFrame(I)V

    .line 81
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 83
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_RABBIT2:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string/jumbo p1, "rabbit2"

    .line 84
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "rabbit.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "rabbit1.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl2:Ljava/lang/String;

    const p1, 0x7f1204fc

    .line 87
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    const p1, 0x7f1204fd

    .line 88
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    .line 89
    invoke-virtual {p0, v5}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setDefaultFrame(I)V

    .line 90
    invoke-virtual {p0, v5}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setFrame(I)V

    .line 91
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 93
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_BEAR:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string p1, "bear"

    .line 94
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bear.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    const p1, 0x7f1204f1

    .line 96
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    .line 97
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x2

    return p0
.end method

.method public initBgData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Ljava/util/List;)I
    .locals 9

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getBackgroundInfos()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->resourceBg:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->TAG:Ljava/lang/String;

    const-string p1, "mimoji bg resource size error"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    :cond_1
    const/4 v1, -0x3

    .line 5
    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-direct {v2, v5}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;-><init>(Z)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 7
    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/arcsoft/avatar2/BackgroundInfo;

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->resourceBg:[I

    aget v6, v6, v3

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->resourceBgDesc:[I

    aget v7, v7, v3

    add-int/lit8 v8, v3, 0x1

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;-><init>(Lcom/arcsoft/avatar2/BackgroundInfo;III)V

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {v2, v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->setSelected(Z)V

    move v1, v3

    .line 10
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v8

    goto :goto_1

    :cond_4
    return v1
.end method

.method public initTimbreData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;Ljava/util/List;)I
    .locals 7

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    array-length v0, v0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->timbreTypes:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->TAG:Ljava/lang/String;

    const-string p1, "mimoji timbre resource size error"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    :cond_1
    const/4 v0, -0x3

    .line 4
    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    invoke-direct {v1, v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;-><init>(Z)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    array-length v1, v1

    if-ge v2, v1, :cond_4

    .line 6
    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->timbreTypes:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsBottomListDataImpl;->resourceTimbreDesc:[I

    aget v6, v6, v2

    invoke-direct {v1, v4, v5, v6}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;-><init>(III)V

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getTimbreId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getTimbreId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 8
    invoke-virtual {v1, v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->setSelected(Z)V

    add-int/lit8 v0, v2, 0x1

    .line 9
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method
