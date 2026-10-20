.class public final Lcom/opay/team/newhome/bean/NewPayData;
.super Ljava/lang/Object;
.source "NewPayDataRsp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008#\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00bf\u0001\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000e\u0012\u0010\u0008\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\u001aH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\u001e2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008#\u0010\"\u001a\u0004\u0008%\u0010$R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008%\u0010\"\u001a\u0004\u0008&\u0010$R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008&\u0010\"\u001a\u0004\u0008\'\u0010$R\"\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u0010\"\u001a\u0004\u0008)\u0010$R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00084\u0010\"\u001a\u0004\u00085\u0010$R$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00080\u00108\"\u0004\u00089\u0010:R$\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u00107\u001a\u0004\u00086\u00108\"\u0004\u0008;\u0010:R$\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00107\u001a\u0004\u0008*\u00108\"\u0004\u0008<\u0010:R$\u0010\u0012\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00107\u001a\u0004\u0008(\u00108\"\u0004\u0008=\u0010:R$\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u00107\u001a\u0004\u00084\u00108\"\u0004\u0008>\u0010:R*\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010\"\u001a\u0004\u0008!\u0010$\"\u0004\u0008?\u0010@\u00a8\u0006A"
    }
    d2 = {
        "Lcom/opay/team/newhome/bean/NewPayData;",
        "",
        "",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "bannerNewData",
        "bannerSecondData",
        "bannerThirdData",
        "kycBannerData",
        "pageBannerData",
        "Lteam/opay/odialog/net/AdDataItem;",
        "float_ad_data",
        "Lcom/opay/team/newhome/bean/CommonPayData;",
        "home_head",
        "home_list",
        "Lteam/opay/core/api/graphql/BubbleAdData;",
        "bubble_ad_home",
        "bubble_ad_rewards",
        "bubble_ad_finance",
        "bubble_ad_cards",
        "bubble_ad_me",
        "available_balance_tip",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Ljava/util/List;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/util/List;",
        "b",
        "()Ljava/util/List;",
        "c",
        "d",
        "m",
        "e",
        "n",
        "f",
        "Lteam/opay/odialog/net/AdDataItem;",
        "j",
        "()Lteam/opay/odialog/net/AdDataItem;",
        "setFloat_ad_data",
        "(Lteam/opay/odialog/net/AdDataItem;)V",
        "g",
        "Lcom/opay/team/newhome/bean/CommonPayData;",
        "k",
        "()Lcom/opay/team/newhome/bean/CommonPayData;",
        "h",
        "l",
        "i",
        "Lteam/opay/core/api/graphql/BubbleAdData;",
        "()Lteam/opay/core/api/graphql/BubbleAdData;",
        "setBubble_ad_home",
        "(Lteam/opay/core/api/graphql/BubbleAdData;)V",
        "setBubble_ad_rewards",
        "setBubble_ad_finance",
        "setBubble_ad_cards",
        "setBubble_ad_me",
        "setAvailable_balance_tip",
        "(Ljava/util/List;)V",
        "sdk_release"
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
.field private final a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_new_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_second_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_third_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kyc_banner_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page_banner_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lteam/opay/odialog/net/AdDataItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "float_ad_data"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Lcom/opay/team/newhome/bean/CommonPayData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "home_head"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "home_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/CommonPayData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lteam/opay/core/api/graphql/BubbleAdData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bubble_ad_home"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lteam/opay/core/api/graphql/BubbleAdData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bubble_ad_rewards"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lteam/opay/core/api/graphql/BubbleAdData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bubble_ad_finance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Lteam/opay/core/api/graphql/BubbleAdData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bubble_ad_cards"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lteam/opay/core/api/graphql/BubbleAdData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bubble_ad_me"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "available_balance_tip"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/opay/team/newhome/bean/CommonPayData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/core/api/graphql/BubbleAdData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lteam/opay/core/api/graphql/BubbleAdData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lteam/opay/core/api/graphql/BubbleAdData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lteam/opay/core/api/graphql/BubbleAdData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lteam/opay/core/api/graphql/BubbleAdData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;",
            "Lteam/opay/odialog/net/AdDataItem;",
            "Lcom/opay/team/newhome/bean/CommonPayData;",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/CommonPayData;",
            ">;",
            "Lteam/opay/core/api/graphql/BubbleAdData;",
            "Lteam/opay/core/api/graphql/BubbleAdData;",
            "Lteam/opay/core/api/graphql/BubbleAdData;",
            "Lteam/opay/core/api/graphql/BubbleAdData;",
            "Lteam/opay/core/api/graphql/BubbleAdData;",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/opay/team/newhome/bean/NewPayData;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/bean/NewPayData;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/opay/team/newhome/bean/NewPayData;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/opay/team/newhome/bean/NewPayData;->d:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/opay/team/newhome/bean/NewPayData;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lcom/opay/team/newhome/bean/NewPayData;->f:Lteam/opay/odialog/net/AdDataItem;

    .line 8
    iput-object p7, p0, Lcom/opay/team/newhome/bean/NewPayData;->g:Lcom/opay/team/newhome/bean/CommonPayData;

    .line 9
    iput-object p8, p0, Lcom/opay/team/newhome/bean/NewPayData;->h:Ljava/util/List;

    .line 10
    iput-object p9, p0, Lcom/opay/team/newhome/bean/NewPayData;->i:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 11
    iput-object p10, p0, Lcom/opay/team/newhome/bean/NewPayData;->j:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 12
    iput-object p11, p0, Lcom/opay/team/newhome/bean/NewPayData;->k:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 13
    iput-object p12, p0, Lcom/opay/team/newhome/bean/NewPayData;->l:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 14
    iput-object p13, p0, Lcom/opay/team/newhome/bean/NewPayData;->m:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 15
    iput-object p14, p0, Lcom/opay/team/newhome/bean/NewPayData;->n:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p15

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p14

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 16
    invoke-direct/range {v1 .. v15}, Lcom/opay/team/newhome/bean/NewPayData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Lteam/opay/core/api/graphql/BubbleAdData;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->n:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lteam/opay/core/api/graphql/BubbleAdData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->l:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 2
    .line 3
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
    instance-of v1, p1, Lcom/opay/team/newhome/bean/NewPayData;

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
    check-cast p1, Lcom/opay/team/newhome/bean/NewPayData;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->a:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->a:Ljava/util/List;

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
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->b:Ljava/util/List;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->b:Ljava/util/List;

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
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->c:Ljava/util/List;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->c:Ljava/util/List;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->d:Ljava/util/List;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->d:Ljava/util/List;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->e:Ljava/util/List;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->e:Ljava/util/List;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->f:Lteam/opay/odialog/net/AdDataItem;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->f:Lteam/opay/odialog/net/AdDataItem;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->g:Lcom/opay/team/newhome/bean/CommonPayData;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->g:Lcom/opay/team/newhome/bean/CommonPayData;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->h:Ljava/util/List;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->h:Ljava/util/List;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->i:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->i:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->j:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 113
    .line 114
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->j:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->k:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 124
    .line 125
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->k:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->l:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 135
    .line 136
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->l:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->m:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 146
    .line 147
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewPayData;->m:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewPayData;->n:Ljava/util/List;

    .line 157
    .line 158
    iget-object p1, p1, Lcom/opay/team/newhome/bean/NewPayData;->n:Ljava/util/List;

    .line 159
    .line 160
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    return v0
.end method

.method public final f()Lteam/opay/core/api/graphql/BubbleAdData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->k:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lteam/opay/core/api/graphql/BubbleAdData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->i:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lteam/opay/core/api/graphql/BubbleAdData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->m:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->a:Ljava/util/List;

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
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->b:Ljava/util/List;

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
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->c:Ljava/util/List;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->d:Ljava/util/List;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->e:Ljava/util/List;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->f:Lteam/opay/odialog/net/AdDataItem;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Lteam/opay/odialog/net/AdDataItem;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->g:Lcom/opay/team/newhome/bean/CommonPayData;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/CommonPayData;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->h:Ljava/util/List;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->i:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BubbleAdData;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->j:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BubbleAdData;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->k:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BubbleAdData;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->l:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BubbleAdData;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->m:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BubbleAdData;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewPayData;->n:Ljava/util/List;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    goto :goto_d

    .line 175
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    :goto_d
    add-int/2addr v0, v1

    .line 180
    return v0
.end method

.method public final i()Lteam/opay/core/api/graphql/BubbleAdData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->j:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lteam/opay/odialog/net/AdDataItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->f:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lcom/opay/team/newhome/bean/CommonPayData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->g:Lcom/opay/team/newhome/bean/CommonPayData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/CommonPayData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewPayData;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 16
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewPayData;->a:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/opay/team/newhome/bean/NewPayData;->b:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/opay/team/newhome/bean/NewPayData;->c:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/opay/team/newhome/bean/NewPayData;->d:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/opay/team/newhome/bean/NewPayData;->e:Ljava/util/List;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/opay/team/newhome/bean/NewPayData;->f:Lteam/opay/odialog/net/AdDataItem;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/opay/team/newhome/bean/NewPayData;->g:Lcom/opay/team/newhome/bean/CommonPayData;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/opay/team/newhome/bean/NewPayData;->h:Ljava/util/List;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/opay/team/newhome/bean/NewPayData;->i:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/opay/team/newhome/bean/NewPayData;->j:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/opay/team/newhome/bean/NewPayData;->k:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/opay/team/newhome/bean/NewPayData;->l:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/opay/team/newhome/bean/NewPayData;->m:Lteam/opay/core/api/graphql/BubbleAdData;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/opay/team/newhome/bean/NewPayData;->n:Ljava/util/List;

    .line 30
    .line 31
    new-instance v15, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "NewPayData(bannerNewData="

    .line 37
    .line 38
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", bannerSecondData="

    .line 45
    .line 46
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", bannerThirdData="

    .line 53
    .line 54
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", kycBannerData="

    .line 61
    .line 62
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", pageBannerData="

    .line 69
    .line 70
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", float_ad_data="

    .line 77
    .line 78
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", home_head="

    .line 85
    .line 86
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", home_list="

    .line 93
    .line 94
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", bubble_ad_home="

    .line 101
    .line 102
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", bubble_ad_rewards="

    .line 109
    .line 110
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ", bubble_ad_finance="

    .line 117
    .line 118
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, ", bubble_ad_cards="

    .line 125
    .line 126
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, ", bubble_ad_me="

    .line 133
    .line 134
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ", available_balance_tip="

    .line 141
    .line 142
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, ")"

    .line 149
    .line 150
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0
.end method
