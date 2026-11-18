.class public final Lteam/opay/business/picture/BigImageActivity;
.super Ljw6;
.source "BigImageActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/business/picture/BigImageActivity;",
        "Lteam/opay/core/common/base/HiltActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Llqb;",
        "p",
        "Lcom/hi/dhl/binding/viewbind/ActivityViewBinding;",
        "f0",
        "()Llqb;",
        "bind",
        "business-picture_release"
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
.field public static final synthetic q:[Lzo7;
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
.field public final p:Lcom/hi/dhl/binding/viewbind/ActivityViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBind()Lteam/opay/business/picture/databinding/PictureActivityBigImageBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/picture/BigImageActivity;

    .line 7
    .line 8
    const-string v4, "bind"

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
    sput-object v1, Lteam/opay/business/picture/BigImageActivity;->q:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lteam/opay/business/picture/R$layout;->picture_activity_big_image:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljw6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/ActivityViewBinding;

    .line 7
    .line 8
    const-class v1, Llqb;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/ActivityViewBinding;-><init>(Ljava/lang/Class;Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/business/picture/BigImageActivity;->p:Lcom/hi/dhl/binding/viewbind/ActivityViewBinding;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic d0(Lteam/opay/business/picture/BigImageActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/BigImageActivity;->h0(Lteam/opay/business/picture/BigImageActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lteam/opay/business/picture/BigImageActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/BigImageActivity;->g0(Lteam/opay/business/picture/BigImageActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g0(Lteam/opay/business/picture/BigImageActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final h0(Lteam/opay/business/picture/BigImageActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final f0()Llqb;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/BigImageActivity;->p:Lcom/hi/dhl/binding/viewbind/ActivityViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/picture/BigImageActivity;->q:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/ActivityViewBinding;->i(Landroid/app/Activity;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Llqb;

    .line 13
    .line 14
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Ljw6;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "imageUrl"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    move-object v1, p1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    goto :goto_0

    .line 44
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v0, 0x0

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    const-string v2, "isPrivate"

    .line 56
    .line 57
    invoke-virtual {p1, v2, v0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    :cond_3
    if-eqz v1, :cond_5

    .line 62
    .line 63
    const-string p1, "zoomView"

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/business/picture/BigImageActivity;->f0()Llqb;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Llqb;->c:Lteam/opay/business/picture/widget/BigImageView;

    .line 72
    .line 73
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/16 v6, 0x1e

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v3, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-static/range {v0 .. v7}, Lteam/opay/core/common/android/glide/a;->e(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    invoke-virtual {p0}, Lteam/opay/business/picture/BigImageActivity;->f0()Llqb;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v0, v0, Llqb;->c:Lteam/opay/business/picture/widget/BigImageView;

    .line 92
    .line 93
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/16 v6, 0x1e

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v2, 0x0

    .line 100
    const/4 v3, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    const/4 v5, 0x0

    .line 103
    invoke-static/range {v0 .. v7}, Lteam/opay/core/common/android/glide/a;->c(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :goto_3
    invoke-virtual {p0}, Lteam/opay/business/picture/BigImageActivity;->f0()Llqb;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p1, p1, Llqb;->c:Lteam/opay/business/picture/widget/BigImageView;

    .line 111
    .line 112
    new-instance v0, Le41;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Le41;-><init>(Lteam/opay/business/picture/BigImageActivity;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lteam/opay/business/picture/widget/BigImageView;->setOnSingleTapConfirm(Lkotlin/jvm/functions/Function0;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lteam/opay/business/picture/BigImageActivity;->f0()Llqb;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object p1, p1, Llqb;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 125
    .line 126
    const-string v0, "back"

    .line 127
    .line 128
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lf41;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Lf41;-><init>(Lteam/opay/business/picture/BigImageActivity;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 141
    .line 142
    .line 143
    :goto_4
    return-void
.end method
