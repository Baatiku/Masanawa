.class public final Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;
.super Lteam/opay/opb/qrcode/bind/Hilt_BindPreQrResultFragment;
.source "BindPreQrResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ+\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;",
        "Lteam/opay/core/common/base/BaseFragment;",
        "<init>",
        "()V",
        "",
        "initView",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "I",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lgac;",
        "f",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "G",
        "()Lgac;",
        "binding",
        "Lteam/opay/opb/qrcode/api/BindPreQrRsp;",
        "g",
        "Lteam/opay/opb/qrcode/api/BindPreQrRsp;",
        "bindPreQrRsp",
        "h",
        "Companion",
        "opay-qrcode_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final h:Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic i:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/opb/qrcode/databinding/QrSdkFragmentBindPreQrResultBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->i:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->h:Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/qrcode/bind/Hilt_BindPreQrResultFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 5
    .line 6
    const-class v1, Lgac;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic F(Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->H(Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final H(Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getBtnAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    const-string v0, "JUMP"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getJumpUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    sget-object v0, Lud;->a:Lud;

    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v4, 0x4

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static/range {v0 .. v5}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string v0, "CLOSE"

    .line 50
    .line 51
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    return-void
.end method

.method private final initView()V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->G()Lgac;

    move-result-object v3

    .line 2
    iget-object v4, v3, Lgac;->b:Lteam/opay/core/widget/CorpActionBar;

    iget-object v5, v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getActionBarTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    const-string v7, ""

    if-nez v5, :cond_1

    move-object v5, v7

    :cond_1
    invoke-virtual {v4, v5}, Lteam/opay/core/widget/CorpActionBar;->setTitle(Ljava/lang/String;)V

    .line 3
    iget-object v8, v3, Lgac;->d:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v4, "ivBindState"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getLogo()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_3

    move-object v9, v7

    goto :goto_2

    :cond_3
    move-object v9, v4

    :goto_2
    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Lteam/opay/core/common/android/glide/a;->c(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V

    .line 4
    iget-object v4, v3, Lgac;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v5, "ivBindStateBg"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getBackgroundLogo()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v5, v6

    :goto_3
    if-nez v5, :cond_5

    move-object/from16 v17, v7

    goto :goto_4

    :cond_5
    move-object/from16 v17, v5

    :goto_4
    const/16 v22, 0x1e

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v23}, Lteam/opay/core/common/android/glide/a;->c(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V

    .line 5
    iget-object v4, v3, Lgac;->g:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v5, v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getStatusMsg()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_6
    move-object v5, v6

    :goto_5
    if-nez v5, :cond_7

    move-object v5, v7

    :cond_7
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v4, v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getTip()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_8
    move-object v4, v6

    :goto_6
    const-string v5, "tvBindStateDesc"

    if-eqz v4, :cond_12

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_a

    .line 7
    :cond_9
    iget-object v4, v3, Lgac;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lg0g;->h(Landroid/view/View;)V

    .line 8
    iget-object v4, v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getColor()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-static {v4}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-ne v4, v1, :cond_f

    .line 9
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 10
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 11
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/16 v8, 0xc

    int-to-float v8, v8

    mul-float v5, v5, v8

    .line 12
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 13
    const-class v8, Ljava/lang/Float;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v8

    .line 14
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_7

    .line 15
    :cond_a
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    goto :goto_7

    .line 16
    :cond_b
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    goto :goto_7

    .line 17
    :cond_c
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 18
    :goto_7
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 19
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 20
    iget-object v5, v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getColor()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 21
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 22
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 23
    :cond_d
    iget-object v5, v3, Lgac;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 24
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "return number type not support"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_f
    :goto_8
    iget-object v4, v3, Lgac;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v5, v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getTip()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_10
    move-object v5, v6

    :goto_9
    if-nez v5, :cond_11

    move-object v5, v7

    :cond_11
    invoke-static {v5, v2}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 26
    :cond_12
    :goto_a
    iget-object v4, v3, Lgac;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lg0g;->d(Landroid/view/View;)V

    .line 27
    :goto_b
    iget-object v4, v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getBtnText()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_13
    move-object v4, v6

    :goto_c
    const-string v5, "btnNext"

    if-eqz v4, :cond_17

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_14

    goto :goto_f

    .line 28
    :cond_14
    iget-object v4, v3, Lgac;->c:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lg0g;->h(Landroid/view/View;)V

    .line 29
    iget-object v4, v3, Lgac;->c:Lcom/google/android/material/button/MaterialButton;

    iget-object v5, v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getBtnText()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_15
    move-object v5, v6

    :goto_d
    if-nez v5, :cond_16

    goto :goto_e

    :cond_16
    move-object v7, v5

    :goto_e
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v3, v3, Lgac;->c:Lcom/google/android/material/button/MaterialButton;

    new-instance v4, Lc81;

    invoke-direct {v4, v0}, Lc81;-><init>(Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10

    .line 31
    :cond_17
    :goto_f
    iget-object v3, v3, Lgac;->c:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lg0g;->d(Landroid/view/View;)V

    .line 32
    :goto_10
    sget-object v3, Ldre;->a:Ldre;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    move-result-object v4

    .line 34
    iget-object v5, v0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lteam/opay/opb/qrcode/api/BindPreQrRsp;->getStatus()Ljava/lang/Boolean;

    move-result-object v6

    :cond_18
    const-string v5, "isSuccess"

    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    new-array v1, v1, [Lkotlin/Pair;

    aput-object v5, v1, v2

    .line 35
    const-string v2, "qr_sdk_bindPreQr_result_show"

    invoke-virtual {v3, v4, v2, v1}, Ldre;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method


# virtual methods
.method public final G()Lgac;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->i:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lgac;

    .line 13
    .line 14
    return-object v0
.end method

.method public I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->G()Lgac;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lgac;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "getRoot(...)"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    const/16 v2, 0x21

    .line 16
    .line 17
    const-string v3, "response"

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    :try_start_1
    const-class v1, Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    .line 22
    .line 23
    invoke-static {p1, v3, v1}, Lvx2;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/os/Parcelable;

    .line 28
    .line 29
    :goto_0
    move-object v0, p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    :goto_1
    check-cast v0, Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    .line 37
    .line 38
    :cond_1
    iput-object v0, p0, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->g:Lteam/opay/opb/qrcode/api/BindPreQrRsp;

    .line 39
    .line 40
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/opb/qrcode/bind/BindPreQrResultFragment;->initView()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
