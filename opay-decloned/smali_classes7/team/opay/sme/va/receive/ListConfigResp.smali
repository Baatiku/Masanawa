.class public final Lteam/opay/sme/va/receive/ListConfigResp;
.super Ljava/lang/Object;
.source "Bean.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008)\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0095\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\t\u0010*\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0006H\u00c6\u0003J\t\u0010.\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u0011\u00101\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u00104\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005H\u00c6\u0003J\u00b1\u0001\u00105\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005H\u00c6\u0001J\u0013\u00106\u001a\u00020\u00082\u0008\u00107\u001a\u0004\u0018\u000108H\u00d6\u0003J\t\u00109\u001a\u00020:H\u00d6\u0001J\t\u0010;\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0017R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0017R\u0016\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u000c\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001fR\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\"R\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0019R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0017R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0017R\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0019\u00a8\u0006<"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/ListConfigResp;",
        "Ljava/io/Serializable;",
        "divTitle",
        "",
        "divList",
        "",
        "Lteam/opay/sme/va/receive/SubEntrance;",
        "tnListShow",
        "",
        "welcomeMessage",
        "backgroundImgUrl",
        "safe",
        "level",
        "rightTop",
        "Lteam/opay/sme/va/receive/ServicePageInfo;",
        "services",
        "moduleList",
        "changeIconUrl",
        "tintColor",
        "buttonColor",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/ServicePageInfo;Lteam/opay/sme/va/receive/ServicePageInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V",
        "getDivTitle",
        "()Ljava/lang/String;",
        "getDivList",
        "()Ljava/util/List;",
        "getTnListShow",
        "()Z",
        "getWelcomeMessage",
        "getBackgroundImgUrl",
        "getSafe",
        "()Lteam/opay/sme/va/receive/SubEntrance;",
        "getLevel",
        "getRightTop",
        "()Lteam/opay/sme/va/receive/ServicePageInfo;",
        "getServices",
        "getModuleList",
        "getChangeIconUrl",
        "getTintColor",
        "getButtonColor",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "sme-va_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final backgroundImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backgroundImgUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final buttonColor:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buttonColor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final changeIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "changeIconUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final divList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "divList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/va/receive/SubEntrance;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final divTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "divTitle"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final level:Lteam/opay/sme/va/receive/SubEntrance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final moduleList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moduleList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/va/receive/ServicePageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rightTop:Lteam/opay/sme/va/receive/ServicePageInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rightTop"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final safe:Lteam/opay/sme/va/receive/SubEntrance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "safe"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final services:Lteam/opay/sme/va/receive/ServicePageInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "services"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tintColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tintColor"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tnListShow:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tnListShow"
    .end annotation
.end field

.field private final welcomeMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "welcomeMessage"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/ServicePageInfo;Lteam/opay/sme/va/receive/ServicePageInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/sme/va/receive/SubEntrance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lteam/opay/sme/va/receive/SubEntrance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lteam/opay/sme/va/receive/ServicePageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/sme/va/receive/ServicePageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/sme/va/receive/SubEntrance;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/sme/va/receive/SubEntrance;",
            "Lteam/opay/sme/va/receive/SubEntrance;",
            "Lteam/opay/sme/va/receive/ServicePageInfo;",
            "Lteam/opay/sme/va/receive/ServicePageInfo;",
            "Ljava/util/List<",
            "Lteam/opay/sme/va/receive/ServicePageInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "safe"

    .line 2
    .line 3
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "level"

    .line 7
    .line 8
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divTitle:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divList:Ljava/util/List;

    .line 17
    .line 18
    iput-boolean p3, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tnListShow:Z

    .line 19
    .line 20
    iput-object p4, p0, Lteam/opay/sme/va/receive/ListConfigResp;->welcomeMessage:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p5, p0, Lteam/opay/sme/va/receive/ListConfigResp;->backgroundImgUrl:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p6, p0, Lteam/opay/sme/va/receive/ListConfigResp;->safe:Lteam/opay/sme/va/receive/SubEntrance;

    .line 25
    .line 26
    iput-object p7, p0, Lteam/opay/sme/va/receive/ListConfigResp;->level:Lteam/opay/sme/va/receive/SubEntrance;

    .line 27
    .line 28
    iput-object p8, p0, Lteam/opay/sme/va/receive/ListConfigResp;->rightTop:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 29
    .line 30
    iput-object p9, p0, Lteam/opay/sme/va/receive/ListConfigResp;->services:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 31
    .line 32
    iput-object p10, p0, Lteam/opay/sme/va/receive/ListConfigResp;->moduleList:Ljava/util/List;

    .line 33
    .line 34
    iput-object p11, p0, Lteam/opay/sme/va/receive/ListConfigResp;->changeIconUrl:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p12, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tintColor:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p13, p0, Lteam/opay/sme/va/receive/ListConfigResp;->buttonColor:Ljava/util/List;

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/sme/va/receive/ListConfigResp;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/ServicePageInfo;Lteam/opay/sme/va/receive/ServicePageInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lteam/opay/sme/va/receive/ListConfigResp;
    .locals 14

    .line 1
    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lteam/opay/sme/va/receive/ListConfigResp;->divTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lteam/opay/sme/va/receive/ListConfigResp;->divList:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lteam/opay/sme/va/receive/ListConfigResp;->tnListShow:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lteam/opay/sme/va/receive/ListConfigResp;->welcomeMessage:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lteam/opay/sme/va/receive/ListConfigResp;->backgroundImgUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lteam/opay/sme/va/receive/ListConfigResp;->safe:Lteam/opay/sme/va/receive/SubEntrance;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lteam/opay/sme/va/receive/ListConfigResp;->level:Lteam/opay/sme/va/receive/SubEntrance;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lteam/opay/sme/va/receive/ListConfigResp;->rightTop:Lteam/opay/sme/va/receive/ServicePageInfo;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lteam/opay/sme/va/receive/ListConfigResp;->services:Lteam/opay/sme/va/receive/ServicePageInfo;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lteam/opay/sme/va/receive/ListConfigResp;->moduleList:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lteam/opay/sme/va/receive/ListConfigResp;->changeIconUrl:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lteam/opay/sme/va/receive/ListConfigResp;->tintColor:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-object v1, v0, Lteam/opay/sme/va/receive/ListConfigResp;->buttonColor:Ljava/util/List;

    goto :goto_c

    :cond_c
    move-object/from16 v1, p13

    :goto_c
    move-object p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lteam/opay/sme/va/receive/ListConfigResp;->copy(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/ServicePageInfo;Lteam/opay/sme/va/receive/ServicePageInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lteam/opay/sme/va/receive/ListConfigResp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/sme/va/receive/ServicePageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->moduleList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->changeIconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tintColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->buttonColor:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/sme/va/receive/SubEntrance;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tnListShow:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->welcomeMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->backgroundImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Lteam/opay/sme/va/receive/SubEntrance;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->safe:Lteam/opay/sme/va/receive/SubEntrance;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Lteam/opay/sme/va/receive/SubEntrance;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->level:Lteam/opay/sme/va/receive/SubEntrance;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Lteam/opay/sme/va/receive/ServicePageInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->rightTop:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Lteam/opay/sme/va/receive/ServicePageInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->services:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/ServicePageInfo;Lteam/opay/sme/va/receive/ServicePageInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lteam/opay/sme/va/receive/ListConfigResp;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/sme/va/receive/SubEntrance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lteam/opay/sme/va/receive/SubEntrance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lteam/opay/sme/va/receive/ServicePageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/sme/va/receive/ServicePageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/sme/va/receive/SubEntrance;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/sme/va/receive/SubEntrance;",
            "Lteam/opay/sme/va/receive/SubEntrance;",
            "Lteam/opay/sme/va/receive/ServicePageInfo;",
            "Lteam/opay/sme/va/receive/ServicePageInfo;",
            "Ljava/util/List<",
            "Lteam/opay/sme/va/receive/ServicePageInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lteam/opay/sme/va/receive/ListConfigResp;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "safe"

    .line 2
    .line 3
    move-object/from16 v7, p6

    .line 4
    .line 5
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "level"

    .line 9
    .line 10
    move-object/from16 v8, p7

    .line 11
    .line 12
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lteam/opay/sme/va/receive/ListConfigResp;

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    move-object/from16 v2, p1

    .line 19
    .line 20
    move-object/from16 v3, p2

    .line 21
    .line 22
    move/from16 v4, p3

    .line 23
    .line 24
    move-object/from16 v5, p4

    .line 25
    .line 26
    move-object/from16 v6, p5

    .line 27
    .line 28
    move-object/from16 v9, p8

    .line 29
    .line 30
    move-object/from16 v10, p9

    .line 31
    .line 32
    move-object/from16 v11, p10

    .line 33
    .line 34
    move-object/from16 v12, p11

    .line 35
    .line 36
    move-object/from16 v13, p12

    .line 37
    .line 38
    move-object/from16 v14, p13

    .line 39
    .line 40
    invoke-direct/range {v1 .. v14}, Lteam/opay/sme/va/receive/ListConfigResp;-><init>(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/SubEntrance;Lteam/opay/sme/va/receive/ServicePageInfo;Lteam/opay/sme/va/receive/ServicePageInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/sme/va/receive/ListConfigResp;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/sme/va/receive/ListConfigResp;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divTitle:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->divTitle:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divList:Ljava/util/List;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->divList:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-boolean v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tnListShow:Z

    .line 36
    .line 37
    iget-boolean v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->tnListShow:Z

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->welcomeMessage:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->welcomeMessage:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->backgroundImgUrl:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->backgroundImgUrl:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->safe:Lteam/opay/sme/va/receive/SubEntrance;

    .line 65
    .line 66
    iget-object v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->safe:Lteam/opay/sme/va/receive/SubEntrance;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->level:Lteam/opay/sme/va/receive/SubEntrance;

    .line 76
    .line 77
    iget-object v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->level:Lteam/opay/sme/va/receive/SubEntrance;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->rightTop:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 87
    .line 88
    iget-object v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->rightTop:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->services:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 98
    .line 99
    iget-object v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->services:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->moduleList:Ljava/util/List;

    .line 109
    .line 110
    iget-object v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->moduleList:Ljava/util/List;

    .line 111
    .line 112
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_b

    .line 117
    .line 118
    return v2

    .line 119
    :cond_b
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->changeIconUrl:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->changeIconUrl:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_c

    .line 128
    .line 129
    return v2

    .line 130
    :cond_c
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tintColor:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v3, p1, Lteam/opay/sme/va/receive/ListConfigResp;->tintColor:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_d

    .line 139
    .line 140
    return v2

    .line 141
    :cond_d
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->buttonColor:Ljava/util/List;

    .line 142
    .line 143
    iget-object p1, p1, Lteam/opay/sme/va/receive/ListConfigResp;->buttonColor:Ljava/util/List;

    .line 144
    .line 145
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_e

    .line 150
    .line 151
    return v2

    .line 152
    :cond_e
    return v0
.end method

.method public final getBackgroundImgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->backgroundImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getButtonColor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->buttonColor:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getChangeIconUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->changeIconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDivList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/sme/va/receive/SubEntrance;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDivTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLevel()Lteam/opay/sme/va/receive/SubEntrance;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->level:Lteam/opay/sme/va/receive/SubEntrance;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModuleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/sme/va/receive/ServicePageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->moduleList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRightTop()Lteam/opay/sme/va/receive/ServicePageInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->rightTop:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSafe()Lteam/opay/sme/va/receive/SubEntrance;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->safe:Lteam/opay/sme/va/receive/SubEntrance;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServices()Lteam/opay/sme/va/receive/ServicePageInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->services:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTintColor()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tintColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTnListShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tnListShow:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getWelcomeMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->welcomeMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divTitle:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divList:Ljava/util/List;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-boolean v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tnListShow:Z

    .line 28
    .line 29
    invoke-static {v2}, Lii8;->a(Z)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v0, v2

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->welcomeMessage:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_2
    add-int/2addr v0, v2

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->backgroundImgUrl:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    :goto_3
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget-object v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->safe:Lteam/opay/sme/va/receive/SubEntrance;

    .line 63
    .line 64
    invoke-virtual {v2}, Lteam/opay/sme/va/receive/SubEntrance;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/2addr v0, v2

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-object v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->level:Lteam/opay/sme/va/receive/SubEntrance;

    .line 72
    .line 73
    invoke-virtual {v2}, Lteam/opay/sme/va/receive/SubEntrance;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    .line 79
    .line 80
    iget-object v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->rightTop:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 81
    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    invoke-virtual {v2}, Lteam/opay/sme/va/receive/ServicePageInfo;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    :goto_4
    add-int/2addr v0, v2

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    .line 92
    .line 93
    iget-object v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->services:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 94
    .line 95
    if-nez v2, :cond_5

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    goto :goto_5

    .line 99
    :cond_5
    invoke-virtual {v2}, Lteam/opay/sme/va/receive/ServicePageInfo;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    :goto_5
    add-int/2addr v0, v2

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    .line 105
    .line 106
    iget-object v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->moduleList:Ljava/util/List;

    .line 107
    .line 108
    if-nez v2, :cond_6

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    goto :goto_6

    .line 112
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    :goto_6
    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    .line 118
    .line 119
    iget-object v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->changeIconUrl:Ljava/lang/String;

    .line 120
    .line 121
    if-nez v2, :cond_7

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    goto :goto_7

    .line 125
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    :goto_7
    add-int/2addr v0, v2

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    .line 131
    .line 132
    iget-object v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tintColor:Ljava/lang/String;

    .line 133
    .line 134
    if-nez v2, :cond_8

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    goto :goto_8

    .line 138
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    :goto_8
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    .line 144
    .line 145
    iget-object v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->buttonColor:Ljava/util/List;

    .line 146
    .line 147
    if-nez v2, :cond_9

    .line 148
    .line 149
    goto :goto_9

    .line 150
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    :goto_9
    add-int/2addr v0, v1

    .line 155
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divTitle:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/sme/va/receive/ListConfigResp;->divList:Ljava/util/List;

    .line 4
    .line 5
    iget-boolean v2, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tnListShow:Z

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/sme/va/receive/ListConfigResp;->welcomeMessage:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/sme/va/receive/ListConfigResp;->backgroundImgUrl:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/sme/va/receive/ListConfigResp;->safe:Lteam/opay/sme/va/receive/SubEntrance;

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/sme/va/receive/ListConfigResp;->level:Lteam/opay/sme/va/receive/SubEntrance;

    .line 14
    .line 15
    iget-object v7, p0, Lteam/opay/sme/va/receive/ListConfigResp;->rightTop:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 16
    .line 17
    iget-object v8, p0, Lteam/opay/sme/va/receive/ListConfigResp;->services:Lteam/opay/sme/va/receive/ServicePageInfo;

    .line 18
    .line 19
    iget-object v9, p0, Lteam/opay/sme/va/receive/ListConfigResp;->moduleList:Ljava/util/List;

    .line 20
    .line 21
    iget-object v10, p0, Lteam/opay/sme/va/receive/ListConfigResp;->changeIconUrl:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, p0, Lteam/opay/sme/va/receive/ListConfigResp;->tintColor:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, p0, Lteam/opay/sme/va/receive/ListConfigResp;->buttonColor:Ljava/util/List;

    .line 26
    .line 27
    new-instance v13, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v14, "ListConfigResp(divTitle="

    .line 33
    .line 34
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", divList="

    .line 41
    .line 42
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", tnListShow="

    .line 49
    .line 50
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", welcomeMessage="

    .line 57
    .line 58
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", backgroundImgUrl="

    .line 65
    .line 66
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ", safe="

    .line 73
    .line 74
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ", level="

    .line 81
    .line 82
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, ", rightTop="

    .line 89
    .line 90
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ", services="

    .line 97
    .line 98
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, ", moduleList="

    .line 105
    .line 106
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, ", changeIconUrl="

    .line 113
    .line 114
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, ", tintColor="

    .line 121
    .line 122
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, ", buttonColor="

    .line 129
    .line 130
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, ")"

    .line 137
    .line 138
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    return-object v0
.end method
