# :file_folder: Gold-Source Version List w/ binaries

This is an `almost` complete list of all available goldsrc builds, their build dates and since `6th July 2022` this repository also contains a full set of original binaries for every single build listed below.

# :orange_book: Non-depot builds

Non-depod builds, i.e. builds before 2013, were gathered from various resources from all over the interet. I'm aware of that there're various builds that I've missed, and so if you want to contribute to this project, feel free to. 

# :blue_book: Depot builds

## :grey_question: How to download available depots

In order to download you need to have access to the steam console. You can access it via steam client.

1. Copy the `Manifest ID` you want to download. e.g. _1708995082918278930_ for the build _#5943_.
2. Open the steam console. (you can use browser to do that, simply enter `steam://nav/console` and it will open the console via steam client.)
3. Type in command `download_depot 10 2 ID`, where `ID` is the `Manifest ID`.
4. After successful download you should see message `"Depot download complete"` and then the directory where it was downloaded to.

Thanks to @lujiangz for pointing this out.

## :grey_exclamation: Additional information about steam depots

### How to Download Older Versions of a Steam Game:

_https://steamcommunity.com/sharedfiles/filedetails/?id=889624474_

## :grey_question: How this was accomplished

In order to download individual depots for GoldSrc i used _https://github.com/SteamRE/DepotDownloader_. However the other method that was described earlier can be used to download individual depots as well.

Then I made a utility that searched for string _"Exe build:"_ inside individual depot's _hw.dll_, from that got the build date and from that calculated the build version. 

The original reverse-engineered GoldSrc build number generator can be found here: _[goldsrc-reversed-build_number-function](https://github.com/oxiKKK/goldsrc-reversed-build_number-function)_.

# Decrypted builds

Some of the older engine builds (2003 - 2006) are encypted by Valve's blob modules encryption algorithm. 

I've designed an utility that is able to decrypt these encrypted DLLs into their original form. Such utility can be found here _[gsdescrypt](https://github.com/oxiKKK/goldsource-dll-decryptor)_.

# :page_facing_up: Actual list

| Manifest #          | Exe build string                    | Build # | Encrypted |
| :----------------:  | ----------------------------------- | :-----: | :-------: |
| n/a                 | _"Exe: 09:16:51 Sep  4 1997"_       | 315     | no        |
| n/a                 | _"Exe: 21:33:24 Aug 31 1998"_       | 676     | no        |
| n/a                 | _"Exe: 21:52:31 Nov  1 1998"_       | 738     | no        |
| n/a                 | _"Exe: 15:06:04 Nov  5 1998"_       | 742     | no        |
| n/a                 | _"Exe: 12:21:28 Apr  5 1999"_       | 893     | no        |
| n/a                 | _"Exe: 10:41:25 May 11 1999"_       | 929     | no        |
| n/a                 | _"Exe build: 10:53:19 Oct 12 1999"_ | 1083    | no        |
| n/a                 | _"Exe build: 10:37:23 Oct 23 2000"_ | 1460    | no        |
| n/a                 | _"Exe build: 14:03:56 Mar 12 2001"_ | 1600    | no        |
| n/a                 | _"Exe build: 00:58:34 Apr 10 2001"_ | 1629    | no        |
| n/a                 | _"Exe build: 13:39:18 Jun  1 2001"_ | 1681    | no        |
| n/a                 | _"Exe build: 17:57:35 Sep 20 2001"_ | 1792    | no        |
| n/a                 | _"Exe build: 13:25:04 Jun 11 2002"_ | 2056    | yes       |
| n/a                 | _"Exe build: 19:25:03 Sep 09 2003"_ | 2511    | yes       |
| n/a                 | _"Exe build: 19:04:53 Sep 24 2003"_ | 2526    | yes       |
| n/a                 | _"Exe build: 11:12:39 Dec 10 2003"_ | 2603    | yes       |
| n/a                 | _"Exe build: 23:55:59 Aug 17 2005"_ | 3219    | yes       |
| n/a                 | _"Exe build: 10:56:59 Oct  3 2005"_ | 3266    | yes       |
| n/a                 | _"Exe build: 21:31:56 Oct 19 2006"_ | 3647    | yes       |
| n/a                 | _"Exe build: 14:58:37 Mar 11 2008"_ | 4156    | yes       |
| n/a                 | _"Exe build: 16:05:41 Jun 15 2009"_ | 4554    | no        |
| 1708995082918278930 | _"Exe build: 13:19:56 Jan 31 2013"_ | 5943    | no        |
| 2718197018731051564 | _"Exe build: 12:35:53 Feb  1 2013"_ | 5944    | no        |
| 2766221585297098742 | _"Exe build: 12:35:53 Feb  1 2013"_ | 5944    | no        |
| 6870187883190277118 | _"Exe build: 13:34:24 Feb  4 2013"_ | 5947    | no        |
| 8329224046694073728 | _"Exe build: 13:34:24 Feb  4 2013"_ | 5947    | no        |
| 1770026170092720096 | _"Exe build: 13:45:32 Feb  6 2013"_ | 5949    | no        |
| 6689841252443718803 | _"Exe build: 14:58:39 Feb  7 2013"_ | 5950    | no        |
| 1692544886905900787 | _"Exe build: 14:58:39 Feb  7 2013"_ | 5950    | no        |
| 2414499496995899413 | _"Exe build: 14:58:39 Feb  7 2013"_ | 5950    | no        |
| 7353138414054817319 | _"Exe build: 14:58:39 Feb  7 2013"_ | 5950    | no        |
| 6860768134434101803 | _"Exe build: 13:58:39 Feb  8 2013"_ | 5951    | no        |
| 5634900482623531857 | _"Exe build: 13:58:39 Feb  8 2013"_ | 5951    | no        |
| 6770837320304439542 | _"Exe build: 14:56:26 Feb 10 2013"_ | 5953    | no        |
| 4588244034527664152 | _"Exe build: 14:56:26 Feb 10 2013"_ | 5953    | no        |
| 5252501431754044408 | _"Exe build: 14:56:26 Feb 10 2013"_ | 5953    | no        |
| 4185029319339965005 | _"Exe build: 18:00:51 Feb 12 2013"_ | 5955    | no        |
| 3885289924399424964 | _"Exe build: 15:00:41 Feb 13 2013"_ | 5956    | no        |
| 3759435412689502784 | _"Exe build: 19:41:08 Feb 14 2013"_ | 5957    | no        |
| 6038837318187075516 | _"Exe build: 14:30:41 Feb 15 2013"_ | 5958    | no        |
| 2412150941122947183 | _"Exe build: 12:05:47 Feb 18 2013"_ | 5961    | no        |
| 2795770587619822557 | _"Exe build: 17:09:06 Feb 18 2013"_ | 5961    | no        |
| 2828458228278881948 | _"Exe build: 12:05:47 Feb 18 2013"_ | 5961    | no        |
| n/a                 | _"Exe build: 10:34:26 Feb 21 2013"_ | 5964    | no        |
| 7626492987326457419 | _"Exe build: 14:12:58 Feb 25 2013"_ | 5968    | no        |
| 3994052520213811269 | _"Exe build: 15:28:40 Feb 26 2013"_ | 5969    | no        |
| 1821888081939180393 | _"Exe build: 15:28:40 Feb 26 2013"_ | 5969    | no        |
| 5127985381322756898 | _"Exe build: 15:28:40 Feb 26 2013"_ | 5969    | no        |
| 5336777251212745776 | _"Exe build: 16:01:13 Feb 28 2013"_ | 5971    | no        |
| 4635974092939269009 | _"Exe build: 11:45:32 Mar  1 2013"_ | 5972    | no        |
| 2876713894454200003 | _"Exe build: 11:45:32 Mar  1 2013"_ | 5972    | no        |
| 8277793431877255691 | _"Exe build: 11:45:32 Mar  1 2013"_ | 5972    | no        |
| 1747307767959440487 | _"Exe build: 15:57:15 Mar 12 2013"_ | 5983    | no        |
| 8796666134065596872 | _"Exe build: 11:06:20 Mar 13 2013"_ | 5984    | no        |
| 3726573729874891953 | _"Exe build: 09:17:33 Mar 14 2013"_ | 5985    | no        |
| 5846080216030709681 | _"Exe build: 14:44:05 Mar 15 2013"_ | 5986    | no        |
| 2482538580435892612 | _"Exe build: 15:37:22 Mar 21 2013"_ | 5992    | no        |
| 2640360913087290307 | _"Exe build: 11:29:41 Mar 27 2013"_ | 5998    | no        |
| 3507356412594931241 | _"Exe build: 13:55:53 Mar 28 2013"_ | 5999    | no        |
| 2610583732950053008 | _"Exe build: 13:55:53 Mar 28 2013"_ | 5999    | no        |
| 4926845726282064514 | _"Exe build: 16:08:45 Apr  2 2013"_ | 6004    | no        |
| 1482744400921070977 | _"Exe build: 16:08:45 Apr  2 2013"_ | 6004    | no        |
| 3895297119796930682 | _"Exe build: 18:02:43 Apr  3 2013"_ | 6005    | no        |
| 9142949718613319955 | _"Exe build: 17:26:59 Apr  4 2013"_ | 6006    | no        |
| 5662334818934232383 | _"Exe build: 17:47:17 Apr 25 2013"_ | 6027    | no        |
| 6845380625792895000 | _"Exe build: 17:47:17 Apr 25 2013"_ | 6027    | no        |
| 3113892300314151906 | _"Exe build: 17:47:17 Apr 25 2013"_ | 6027    | no        |
| 4876634998282417387 | _"Exe build: 11:17:34 Aug  8 2013"_ | 6132    | no        |
| 3804102958958055667 | _"Exe build: 16:21:27 Aug 27 2013"_ | 6151    | no        |
| 6825070615708596564 | _"Exe build: 13:14:12 Aug 29 2013"_ | 6153    | no        |
| 3597979389068437528 | _"Exe build: 13:14:12 Aug 29 2013"_ | 6153    | no        |
| 7932041272163964339 | _"Exe build: 13:14:12 Aug 29 2013"_ | 6153    | no        |
| 5593940042001666185 | _"Exe build: 14:19:55 Jul  5 2017"_ | 7559    | no        |
| 2236829964850696242 | _"Exe build: 09:10:05 Jul  7 2017"_ | 7561    | no        |
| 6341244258213176154 | _"Exe build: 09:10:05 Jul  7 2017"_ | 7561    | no        |
| 9199283963323344446 | _"Exe build: 09:10:05 Jul  7 2017"_ | 7561    | no        |
| 1607025600235980776 | _"Exe build: 16:10:54 Aug 10 2018"_ | 7960    | no        |
| 6856799504119275607 | _"Exe build: 16:41:10 Mar 13 2019"_ | 8175    | no        |
| 3213815307757108256 | _"Exe build: 15:51:52 Mar 15 2019"_ | 8177    | no        |
| 7137106734704651281 | _"Exe build: 17:52:35 Mar 21 2019"_ | 8183    | no        |
| 2089500374317423296 | _"Exe build: 15:58:59 Apr  3 2019"_ | 8196    | no        |
| 7092612682436083578 | _"Exe build: 15:57:42 Apr 19 2019"_ | 8212    | no        |
| 1629687619138161369 | _"Exe build: 11:12:36 May 21 2019"_ | 8244    | no        |
| 1488482881741425826 | _"Exe build: 16:32:50 May 22 2019"_ | 8245    | no        |
| 5818130362893347110 | _"Exe build: 17:59:57 May 31 2019"_ | 8254    | no        |
| 4062968584712121070 | _"Exe build: 10:20:22 Jun  6 2019"_ | 8260    | no        |
| 4963753699811102445 | _"Exe build: 15:46:27 Jun 11 2019"_ | 8265    | no        |
| 4006391399151922500 | _"Exe build: 13:32:06 Jun 25 2019"_ | 8279    | no        |
| 6682624199678056042 | _"Exe build: 12:17:35 Jul  3 2019"_ | 8287    | no        |
| 5172535494819978494 | _"Exe build: 12:17:35 Jul  3 2019"_ | 8287    | no        |
| 2837183124450977198 | _"Exe build: 12:17:35 Jul  3 2019"_ | 8287    | no        |
| 4125258494789321253 | _"Exe build: 13:45:11 Jul 17 2019"_ | 8301    | no        |
| 5847061065440668197 | _"Exe build: 10:18:33 Jul 19 2019"_ | 8303    | no        |
| 6841730111333229480 | _"Exe build: 16:01:05 Jul 20 2019"_ | 8304    | no        |
| 4707555369975945351 | _"Exe build: 15:17:55 Jul 24 2019"_ | 8308    | no        |
| 4506059840114402756 | _"Exe build: 15:17:55 Jul 24 2019"_ | 8308    | no        |
| 7168072319523516427 | _"Exe build: 15:17:55 Jul 24 2019"_ | 8308    | no        |
| 7582089499871518284 | _"Exe build: 15:17:55 Jul 24 2019"_ | 8308    | no        |
| 2528622378680377199 | _"Exe build: 15:17:55 Jul 24 2019"_ | 8308    | no        |
| 8320765067082052444 | _"Exe build: 15:17:55 Jul 24 2019"_ | 8308    | no        |
| 7511900663473023951 | _"Exe build: 15:17:55 Jul 24 2019"_ | 8308    | no        |
| 5679635805547411227 | _"Exe build: 13:16:55 Dec 10 2019"_ | 8447    | no        |
| 7200671371102783576 | _"Exe build: 15:14:31 Aug  3 2020"_ | 8684    | no        |
| 1462695326582898379 | _"Exe build: 19:53:27 Aug  3 2020"_ | 8684    | no        |
| 2262782734545034634 | _"Exe build: 19:53:27 Aug  3 2020"_ | 8684    | no        |
| 8143907675450428779 | _"Exe build: 19:53:27 Aug  3 2020"_ | 8684    | no        |
| 2139852524811213490 | _"Exe build: 19:53:27 Aug  3 2020"_ | 8684    | no        |
